part of '../../messages.dart';

enum BalanceTransactionObject {
  @JsonValue('balance_transaction')
  balanceTransaction,
}

/// https://stripe.com/docs/api/balance_transactions/object
@JsonSerializable()
class BalanceTransaction {
  BalanceTransaction({
    required this.object,
    required this.id,
    required this.amount,
    required this.fee,
    required this.feeDetails,
    required this.net,
    required this.currency,
  });

  factory BalanceTransaction.fromJson(Map<String, dynamic> json) =>
      _$BalanceTransactionFromJson(json);
  final BalanceTransactionObject object;
  final String id;
  final int amount;
  final int fee;
  final List<FeeDetails> feeDetails;
  final int net;
  final String currency;

  Map<String, dynamic> toJson() => _$BalanceTransactionToJson(this);
}

@JsonSerializable()
class FeeDetails {
  FeeDetails({
    required this.amount,
    required this.application,
    required this.currency,
    required this.description,
    required this.type,
  });

  factory FeeDetails.fromJson(Map<String, dynamic> json) =>
      _$FeeDetailsFromJson(json);
  final int amount;
  final String? application;
  final String currency;
  final String description;
  final String type;

  Map<String, dynamic> toJson() => _$FeeDetailsToJson(this);
}
