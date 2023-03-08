import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

class RefundResource extends Resource<Refund> {
  RefundResource(Client client) : super(client);

  Future<Refund> create(CreateRefundRequest request) async {
    final map = await post('refunds', data: request.toJson());
    return Refund.fromJson(map);
  }
}
