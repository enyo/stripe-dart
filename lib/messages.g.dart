// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BalanceTransaction _$BalanceTransactionFromJson(Map<String, dynamic> json) {
  return BalanceTransaction(
      id: json['id'] as String,
      amount: json['amount'] as int,
      net: json['net'] as int,
      currency: json['currency'] as String);
}

Map<String, dynamic> _$BalanceTransactionToJson(BalanceTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'net': instance.net,
      'currency': instance.currency
    };

Charge _$ChargeFromJson(Map<String, dynamic> json) {
  return Charge(
      id: json['id'] as String,
      balanceTransaction: json['balance_transaction'] as String,
      paymentMethodDetails: PaymentMethodDetailsCard.fromJson(
          json['payment_method_details'] as Map<String, dynamic>),
      livemode: json['livemode'] as bool);
}

Map<String, dynamic> _$ChargeToJson(Charge instance) => <String, dynamic>{
      'id': instance.id,
      'balance_transaction': instance.balanceTransaction,
      'payment_method_details': instance.paymentMethodDetails.toJson(),
      'livemode': instance.livemode
    };

PaymentIntent _$PaymentIntentFromJson(Map<String, dynamic> json) {
  return PaymentIntent(
      id: json['id'] as String,
      status: json['status'] as String,
      charges: (json['charges'] as List)
          .map((e) => Charge.fromJson(e as Map<String, dynamic>))
          .toList());
}

Map<String, dynamic> _$PaymentIntentToJson(PaymentIntent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'charges': instance.charges.map((e) => e.toJson()).toList()
    };

PaymentMethodDetailsCard _$PaymentMethodDetailsCardFromJson(
    Map<String, dynamic> json) {
  return PaymentMethodDetailsCard(
      brand: json['brand'] as String, last4: json['last4'] as String);
}

Map<String, dynamic> _$PaymentMethodDetailsCardToJson(
        PaymentMethodDetailsCard instance) =>
    <String, dynamic>{'brand': instance.brand, 'last4': instance.last4};

Refund _$RefundFromJson(Map<String, dynamic> json) {
  return Refund(id: json['id'] as String);
}

Map<String, dynamic> _$RefundToJson(Refund instance) =>
    <String, dynamic>{'id': instance.id};

Session _$SessionFromJson(Map<String, dynamic> json) {
  return Session(
      id: json['id'] as String,
      customer: json['customer'] as String,
      paymentIntent: json['payment_intent'] as String);
}

Map<String, dynamic> _$SessionToJson(Session instance) => <String, dynamic>{
      'id': instance.id,
      'customer': instance.customer,
      'payment_intent': instance.paymentIntent
    };
