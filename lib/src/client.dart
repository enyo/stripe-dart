import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:stripe/src/exceptions.dart';

const _defaultUrl = 'https://api.stripe.com/v1/';
const _defaultVersion = '2020-08-27';

/// The http client implementation that will make requests to the stripe API.
///
/// Internally this uses a [Dio] http client.
class Client {
  final String version;
  final String apiKey;

  /// Creates a [Dio] client that will make requests to [baseUrl].
  factory Client({
    required String apiKey,
    String baseUrl = _defaultUrl,
    String version = _defaultVersion,
  }) =>
      Client.withDio(Dio(), baseUrl: baseUrl, version: version, apiKey: apiKey);

  @visibleForTesting
  Client.withDio(
    this.dio, {
    required this.apiKey,
    String baseUrl = _defaultUrl,
    this.version = _defaultVersion,
  }) {
    dio.transformer = FormDataTransformer();
    dio.options
      ..baseUrl = baseUrl
      ..responseType = ResponseType.json
      ..contentType = 'application/x-www-form-urlencoded'
      ..headers = {
        'Authorization': 'Basic ${base64Encode(utf8.encode('$apiKey:'))}',
        'Stripe-Version': version,
        'Content-Type': 'application/x-www-form-urlencoded',
      };
  }

  /// The actual [Dio] instance that makes the request. You shouldn't need to
  /// access this.
  @visibleForTesting
  final Dio dio;

  /// Makes a post request to the Stripe API
  Future<Map<String, dynamic>> post(
    final String path, {
    final Map<String, dynamic>? data,
    final String? idempotencyKey,
  }) async {
    try {
      final response = await dio.post<Map<String, dynamic>>(path,
          data: data,
          options: _createRequestOptions(idempotencyKey: idempotencyKey));
      return processResponse(response);
    } on DioException catch (e) {
      var message = e.message ?? '';
      if (e.response?.data != null) {
        message += '${e.response!.data}';
      }
      throw InvalidRequestException(message);
    }
  }

  /// Makes a get request to the Stripe API
  Future<Map<String, dynamic>> get(
    final String path, {
    String? idempotencyKey,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await dio.get<Map<String, dynamic>>(
      path,
      queryParameters: queryParameters,
      options: _createRequestOptions(idempotencyKey: idempotencyKey),
    );
    return processResponse(response);
  }

  Options? _createRequestOptions({String? idempotencyKey}) =>
      idempotencyKey == null
          ? null
          : Options(headers: {'Idempotency-Key': idempotencyKey});

  Map<String, dynamic> processResponse(
      Response<Map<String, dynamic>> response) {
    final responseStatusCode = response.statusCode;

    final data = response.data;

    if (responseStatusCode != 200) {
      if (data == null || data['error'] == null) {
        throw InvalidRequestException(
            'The status code returned was $responseStatusCode but no error was provided.');
      }
      final error = data['error'] as Map;
      switch (error['type'].toString()) {
        case 'invalid_request_error':
          throw InvalidRequestException(error['message'].toString());
        default:
          throw UnknownTypeException(
              'The status code returned was $responseStatusCode but the error type is unknown.');
      }
    }
    if (data == null) {
      throw InvalidRequestException(
          'The JSON returned was unparsable (${response.data}).');
    }
    return data;
  }
}

/// This converter is used by Dio to convert [List] objects to [Map] so they
/// are encoded properly for Stripe.
///
/// Stripe expects array to be submited like this: `some_field[0]=value` and not
/// `some_field=[value]`.
class FormDataTransformer extends BackgroundTransformer {
  void fixMap(Map object) {
    for (final key in object.keys) {
      var value = object[key];
      if (value is List) {
        object[key] = Map.fromIterables(
            List.generate(value.length, (index) => '$index'), value);
      }

      var newValue = object[key];
      if (newValue is Map) {
        fixMap(newValue);
      }
    }
  }

  @override
  Future<String> transformRequest(RequestOptions options) async {
    if (options.data is Map) {
      fixMap(options.data);
    }
    return super.transformRequest(options);
  }
}
