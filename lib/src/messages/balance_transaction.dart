part of '../../messages.dart';

enum _BalanceTransactionObject { balance_transaction }

/// https://stripe.com/docs/api/balance_transactions/object
@JsonSerializable()
class BalanceTransaction {
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
  Map<String, dynamic> toJson() => _$BalanceTransactionToJson(this);
}
