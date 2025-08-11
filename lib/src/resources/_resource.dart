import 'package:meta/meta.dart';

import 'package:stripe/messages.dart';
import 'package:stripe/src/client.dart';

abstract class Resource<T extends Message> {

  Resource(this._client);
  @protected
  final Client _client;

  @protected
  @visibleForOverriding
  String makeUrl(String path) {
    return path;
  }

  @protected
  Future<Map<String, dynamic>> get(final String path,
          {Map<String, dynamic>? queryParameters}) =>
      _client.get(makeUrl(path), queryParameters: queryParameters);

  @protected
  Future<Map<String, dynamic>> post(final String path,
          {final Map<String, dynamic>? data}) =>
      _client.post(makeUrl(path), data: data);

  @protected
  Future<Map<String, dynamic>> delete(final String path,
          {final Map<String, dynamic>? data}) =>
      _client.delete(makeUrl(path), data: data);
}
