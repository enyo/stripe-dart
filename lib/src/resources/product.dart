import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

class ProductResource extends Resource<Product> {
  ProductResource(Client client) : super(client);

  Future<Product> retrieve(String id) async {
    final map = await get('products/$id');
    return Product.fromJson(map);
  }

  Future<DataList<Product>> list([ListProductsRequest? request]) async {
    final map = await get('products', queryParameters: request?.toJson());
    return DataList<Product>.fromJson(
        map, (value) => Product.fromJson(value as Map<String, dynamic>));
  }

  Future<Product> create(CreateProductRequest request) async {
    final map = await post('products', data: request.toJson());
    return Product.fromJson(map);
  }
}
