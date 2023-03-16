part of '../../messages.dart';

/// https://stripe.com/docs/api/customer_portal/session
@JsonSerializable()
class PortalSession extends Message {
  /// Doesn't work with enum because there is a dot in it.
  final String object;
  final String id;

  /// The ID of the customer for this session.
  final String customer;

  /// Has the value true if the object exists in live mode or the value false if
  /// the object exists in test mode.
  final bool livemode;

  /// The short-lived URL of the session that gives customers access to the customer portal.
  final String url;

  PortalSession({
    required this.object,
    required this.id,
    required this.customer,
    required this.livemode,
    required this.url,
  });

  factory PortalSession.fromJson(Map<String, dynamic> json) =>
      _$PortalSessionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PortalSessionToJson(this);
}
