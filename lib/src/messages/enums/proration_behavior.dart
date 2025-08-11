import 'package:json_annotation/json_annotation.dart';

/// Determines how to handle prorations when the billing cycle changes
/// (e.g., when switching plans, resetting billing_cycle_anchor=now,
/// or starting a trial), or if an item’s quantity changes.
enum ProrationBehavior {
  /// Always invoice immediately for prorations.
  @JsonValue('always_invoice')
  alwaysInvoice,

  /// Will cause proration invoice items to be created when applicable.
  /// These proration items will only be invoiced
  /// immediately under certain conditions.
  @JsonValue('create_prorations')
  createProrations,

  /// Disable creating prorations in this request.
  none,
}
