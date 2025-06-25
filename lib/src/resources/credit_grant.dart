import 'package:stripe/messages.dart';
import 'package:stripe/src/client.dart';

import '_resource.dart';

/// https://docs.stripe.com/api/billing/credit-grant
class CreditGrantResource extends Resource<CreditGrant> {
  static const _resourceName = 'billing/credit_grants';

  CreditGrantResource(Client client) : super(client);

  /// https://docs.stripe.com/api/billing/credit-grant/create
  Future<CreditGrant> create(CreateCreditGrantRequest request) async {
    final map = await post(_resourceName, data: request.toJson());

    return CreditGrant.fromJson(map);
  }

  /// https://docs.stripe.com/api/billing/credit-grant/update
  Future<CreditGrant> update(UpdateCreditGrantRequest request) async {
    final map =
        await post('$_resourceName/${request.id}', data: request.toJson());

    return CreditGrant.fromJson(map);
  }

  /// https://docs.stripe.com/api/billing/credit-grant/retrieve
  Future<CreditGrant> retrieve(String creditGrantId) async {
    final map = await get('$_resourceName/$creditGrantId');

    return CreditGrant.fromJson(map);
  }

  /// https://docs.stripe.com/api/billing/credit-grant/list
  Future<DataList<CreditGrant>> list([ListCreditGrantsRequest? request]) async {
    final map = await get(_resourceName, queryParameters: request?.toJson());

    return DataList<CreditGrant>.fromJson(
      map,
      (value) => CreditGrant.fromJson(value as Map<String, dynamic>),
    );
  }

  /// https://docs.stripe.com/api/billing/credit-grant/expire
  Future<CreditGrant> expire(String creditGrantId) async {
    final map = await post('$_resourceName/$creditGrantId/expire');

    return CreditGrant.fromJson(map);
  }

  /// https://docs.stripe.com/api/billing/credit-grant/void
  Future<CreditGrant> voidCreditGrant(String creditGrantId) async {
    final map = await post('$_resourceName/$creditGrantId/void');

    return CreditGrant.fromJson(map);
  }
}
