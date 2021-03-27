part of '../../messages.dart';

@JsonSerializable(disallowUnrecognizedKeys: false, explicitToJson: true)
class BalanceTransaction {
  final String id;
  final int amount;
  final int net;
  final String currency;
  BalanceTransaction({
    required this.id,
    required this.amount,
    required this.net,
    required this.currency,
  });
  factory BalanceTransaction.fromJson(Map<String, dynamic> json) {
    if (json['object'] != 'balance_transaction') {
      throw InvalidResourceException(
          'The resource object should be "balance_transaction": $json ');
    }
    return _$BalanceTransactionFromJson(json);
  }
  Map<String, dynamic> toJson() => _$BalanceTransactionToJson(this);
}
