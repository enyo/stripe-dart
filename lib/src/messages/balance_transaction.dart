part of '../../messages.dart';

// ignore: constant_identifier_names
enum _BalanceTransactionObject { balance_transaction }

/// https://stripe.com/docs/api/balance_transactions/object
@JsonSerializable()
class BalanceTransaction extends Message {
  final _BalanceTransactionObject object;
  final String id;
  final int amount;
  final int net;
  final String currency;
  BalanceTransaction({
    required this.object,
    required this.id,
    required this.amount,
    required this.net,
    required this.currency,
  });

  factory BalanceTransaction.fromJson(Map<String, dynamic> json) =>
      _$BalanceTransactionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BalanceTransactionToJson(this);
}
