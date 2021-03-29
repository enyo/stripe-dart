import 'package:stripe/stripe.dart';

void main() async {
  // Use your private key here.
  final stripe = Stripe('sk_31JFqK234KJ2n34Kj234...');

  final chargeId = 'ch_foobar';

  // All Stripe calls return dart objects, not generic Maps.
  final charge = await stripe.charge.retrieve(chargeId);
  print(charge.balanceTransaction);
}
