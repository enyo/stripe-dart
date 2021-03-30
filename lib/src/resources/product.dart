import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';

class ProductResource {
  final Client _client;
  ProductResource(this._client);

  Future<Product> retrieve(String id) async {
    final map = await _client.get('products/$id');
    return Product.fromJson(map);
  }

  Future<DataList<Product>> list([ListProductsRequest? request]) async {
    final map =
        await _client.get('products', queryParameters: request?.toJson());
    return DataList<Product>.fromJson(
        map, (value) => Product.fromJson(value as Map<String, dynamic>));
  }
}
