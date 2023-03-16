part of '../../messages.dart';

// ignore: constant_identifier_names
enum _BalanceTransactionObject { balance_transaction }

/// https://stripe.com/docs/api/balance_transactions/object
@JsonSerializable()
class BalanceTransaction extends Message {
  final _BalanceTransactionObject object;
  final String id;
  final int amount;
  final int fee;
  final List<FeeDetails> feeDetails;
  final int net;
  final String currency;

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

  @override
  Map<String, dynamic> toJson() => _$BalanceTransactionToJson(this);
}

@JsonSerializable()
class FeeDetails {
  final int amount;
  final String? application;
  final String currency;
  final String description;
  final String type;

  FeeDetails({
    required this.amount,
    required this.application,
    required this.currency,
    required this.description,
    required this.type,
  });

  factory FeeDetails.fromJson(Map<String, dynamic> json) =>
      _$FeeDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$FeeDetailsToJson(this);
}
