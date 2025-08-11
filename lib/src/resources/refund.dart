import 'dart:async';

import 'package:stripe/messages.dart';

import 'package:stripe/src/resources/_resource.dart';

class RefundResource extends Resource {
  RefundResource(super.client);

  Future<Refund> create(CreateRefundRequest request) async {
    final map = await post('refunds', data: request.toJson());
    return Refund.fromJson(map);
  }
}
