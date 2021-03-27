import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:meta/meta.dart';
import 'package:stripe/src/exceptions.dart';

class Client {
  final String _host;
  final String _version;
  final String _apiKey;

  Client(this._host, this._version, this._apiKey);

  @visibleForTesting
  Client.withIOClient(
    this._host,
    this._version,
    this._apiKey,
    this._ioClientCache,
  );

  IOClient? _ioClientCache;

  IOClient get _ioClient => _ioClientCache ??= IOClient();

  /// Makes a post request to the Stripe API
  Future<Map<String, dynamic>> post(
    final List<String> pathSegements, {
    final Map<String, dynamic>? data,
    final String? idempotencyKey,
  }) async {
    final response = await _ioClient.post(
      createUri(pathSegements),
      body: data,
      headers: createHeader(idempotencyKey: idempotencyKey),
    );
    return processResponse(response);
  }

  /// Makes a get request to the Stripe API
  Future<Map<String, dynamic>> get(
    final List<String> pathSegements, {
    String? idempotencyKey,
  }) async {
    final response = await _ioClient.get(
      createUri(pathSegements),
      headers: createHeader(idempotencyKey: idempotencyKey),
    );
    return processResponse(response);
  }

  Uri createUri(List<String> pathSegements) {
    pathSegements.insert(0, 'v1');
    final uri = Uri(
        scheme: 'https',
        host: _host,
        pathSegments: pathSegements,
        userInfo: '$_apiKey:');
    return uri;
  }

  Map<String, String> createHeader({String? idempotencyKey}) => {
        'Stripe-Version': _version,
        'Content-Type': 'application/x-www-form-urlencoded',
        if (idempotencyKey != null) 'Idempotency-Key': idempotencyKey,
      };

  Map<String, dynamic> processResponse(Response response) {
    final responseStatusCode = response.statusCode;

    Map<String, dynamic>? map;
    try {
      map = jsonDecode(response.body) as Map<String, dynamic>;
    } catch (e) {
      // Throwing later.
    }
    if (responseStatusCode != 200) {
      if (map == null || map['error'] == null) {
        throw InvalidRequestException(
            'The status code returned was $responseStatusCode but no error was provided.');
      }
      final error = map['error'] as Map;
      switch (error['type'].toString()) {
        case 'invalid_request_error':
          throw InvalidRequestException(error['message'].toString());
        default:
          throw UnknownTypeException(
              'The status code returned was $responseStatusCode but the error type is unknown.');
      }
    }
    if (map == null) {
      throw InvalidRequestException(
          'The JSON returned was unparsable (${response.body}).');
    }
    return map;
  }
}
