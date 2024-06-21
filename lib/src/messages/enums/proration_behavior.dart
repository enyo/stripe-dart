// ignore_for_file: constant_identifier_names

/// Determines how to handle prorations when the billing cycle changes
/// (e.g., when switching plans, resetting billing_cycle_anchor=now,
/// or starting a trial), or if an item’s quantity changes.
enum ProrationBehavior {
  /// Always invoice immediately for prorations.
  always_invoice,

  /// Will cause proration invoice items to be created when applicable.
  /// These proration items will only be invoiced immediately under certain conditions.
  create_prorations,

  /// Disable creating prorations in this request.
  none,
}
