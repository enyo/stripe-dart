import 'dart:async';

import 'package:stripe/messages.dart';

import '_resource.dart';

class CustomerResource extends Resource<Customer> {
  CustomerResource(super.client);

  Future<Customer> create(CreateCustomerRequest request) async {
    final response = await post('customers', data: request.toJson());
    return Customer.fromJson(response);
  }

  Future<Customer> retrieve(String customerId) async {
    final map = await get('customers/$customerId');
    return Customer.fromJson(map);
  }

  Future<Customer> update(UpdateCustomerRequest request) async {
    final response =
        await post('customers/${request.id}', data: request.toJson());
    return Customer.fromJson(response);
  }

  Future<DataList<Customer>> search({
    /// https://docs.stripe.com/search#query-fields-for-customers
    required String queryString,
  }) async {
    final Map<String, dynamic> map = await get(
      'customers/search',
      queryParameters: {'query': queryString},
    );

    final customer = DataList<Customer>.fromJson(
      map,
      (customerMap) => Customer.fromJson(customerMap as Map<String, dynamic>),
    );

    return customer;
  }
}
