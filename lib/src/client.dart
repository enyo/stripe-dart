import 'dart:async';

import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:stripe/src/exceptions.dart';
import 'package:uuid/uuid.dart';

const _defaultUrl = 'https://api.stripe.com/v2/';
const _defaultVersion = '2024-09-30.acacia';

/// The http client implementation that will make requests to the stripe API.
///
/// Internally this uses a [Dio] http client.
class Client {
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
    // TODO(kali): figure out what transformation is actually still needed here
    // dio.transformer = FormDataTransformer();
    dio.options
      ..baseUrl = baseUrl
      ..responseType = ResponseType.json
      ..contentType = 'application/json'
      ..headers = {
        'Authorization': 'Bearer $apiKey',
        'Stripe-Version': version,
        'Content-Type': 'application/json',
        'Idempotency-Key': const Uuid().v4(),
      };
  }
  final String version;
  final String apiKey;

  /// The actual [Dio] instance that makes the request. You shouldn't need to
  /// access this.
  @visibleForTesting
  final Dio dio;

  /// Makes a post request to the Stripe API
  Future<Map<String, dynamic>> post(
    String path, {
    Map<String, dynamic>? data,
  }) async {
    try {
      final response = await dio.post<Map<String, dynamic>>(
        path,
        data: data,
      );
      return processResponse(response);
    } on DioException catch (e) {
      var message = e.message ?? '';
      if (e.response?.data != null) {
        message += '${e.response!.data}';
      }
      throw InvalidRequestException(message);
    }
  }

  /// Makes a DELETE request to the Stripe API
  Future<Map<String, dynamic>> delete(
    String path, {
    Map<String, dynamic>? data,
  }) async {
    try {
      final response = await dio.delete<Map<String, dynamic>>(
        path,
        data: data,
      );
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
    String path, {
    String? idempotencyKey,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await dio.get<Map<String, dynamic>>(
      path,
      queryParameters: queryParameters,
    );
    return processResponse(response);
  }

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

// /// This converter is used by Dio to convert [List] objects to [Map] so they
// /// are encoded properly for Stripe.
// ///
// /// Stripe expects array to be submited like this: `some_field[0]=value` and not
// /// `some_field=[value]`.
// class FormDataTransformer extends BackgroundTransformer {
//   void fixMap(Map<String, dynamic> object) {
//     for (final key in object.keys) {
//       final value = object[key];
//       if (value is List) {
//         object[key] = Map.fromIterables(
//             List.generate(value.length, (index) => '$index'), value);
//       }

//       final newValue = object[key];
//       if (newValue is Map<String, dynamic>) {
//         fixMap(newValue);
//       }
//     }
//   }

//   @override
//   Future<String> transformRequest(RequestOptions options) async {
//     if (options.data is Map<String, dynamic>) {
//       fixMap(options.data);
//     }
//     return super.transformRequest(options);
//   }
// }
