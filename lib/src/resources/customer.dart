import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

class CustomerResource extends Resource<Customer> {
  CustomerResource(Client client) : super(client);

  Future<Customer> create(CreateCustomerRequest request) async {
    final response = await post('customers', data: request.toJson());
    return Customer.fromJson(response);
  }

  Future<Customer> retrieve(String customerId) async {
    final map = await get('customers/$customerId');
    return Customer.fromJson(map);
  }

  Future<List<Customer>> search(
    String email,
  ) async {
    final map = await get('customers/search', queryParameters: {
      'query': 'email=$email',
    });

    return (map['data'] as List).map((e) => Customer.fromJson(e)).toList();
  }

  Future<Customer> update(UpdateCustomerRequest request) async {
    final response =
        await post('customers/${request.id}', data: request.toJson());
    return Customer.fromJson(response);
  }

  Future<DataList<PaymentMethod>> paymentMethods(String customerId) async {
    final response = await get(
      'customers/$customerId/payment_methods',
    );

    return DataList<PaymentMethod>.fromJson(
      response,
      (value) => PaymentMethod.fromJson(value as Map<String, dynamic>),
    );
  }
}
