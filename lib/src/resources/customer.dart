import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';

class CustomerResource {
  final Client _client;
  CustomerResource(this._client);

  Future<Customer> create(CreateCustomerRequest request) async {
    final response = await _client.post('customers', data: request.toJson());
    return Customer.fromJson(response);
  }

  Future<Customer> retrieve(String customerId) async {
    final map = await _client.get('customers/$customerId');
    return Customer.fromJson(map);
  }
}
