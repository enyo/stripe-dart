part of '../../../messages.dart';

/// https://stripe.com/docs/api/checkout/sessions/create
@JsonSerializable()
class CreatePortalSessionRequest {

  CreatePortalSessionRequest({
    required this.customer,
    this.returnUrl,
  });

  factory CreatePortalSessionRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePortalSessionRequestFromJson(json);
  /// The ID of an existing customer.
  final String customer;

  /// The default URL to redirect customers to when they click on the portal’s
  /// link to return to your website.
  ///
  /// REQUIRED IF THE CONFIGURATION'S DEFAULT RETURN URL IS NOT SET
  final String? returnUrl;
  Map<String, dynamic> toJson() => _$CreatePortalSessionRequestToJson(this);
}
