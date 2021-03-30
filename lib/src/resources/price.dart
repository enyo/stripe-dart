import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';

class PriceResource {
  final Client _client;
  PriceResource(this._client);

  Future<Price> retrieve(String id) async {
    final map = await _client.get('prices/$id');
    return Price.fromJson(map);
  }

  Future<DataList<Price>> list([ListPricesRequest? request]) async {
    final map = await _client.get('prices', queryParameters: request?.toJson());
    return DataList<Price>.fromJson(
        map, (value) => Price.fromJson(value as Map<String, dynamic>));
  }
}
