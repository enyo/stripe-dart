library stripe;

import 'src/client.dart';
import 'src/resources/balance_transaction.dart';
import 'src/resources/charge.dart';
import 'src/resources/payment_intent.dart';
import 'src/resources/refund.dart';
import 'src/resources/session.dart';

export 'messages.dart';
export 'src/webhook.dart';

/// [Stripe] is the Class that provides the Interface for external calls via the Stripe API.
class Stripe {
  static const _host = 'api.stripe.com';
  static const _version = '2019-05-16';

  /// Useful for testing.
  final Client client;

  final SessionResource session;
  final RefundResource refund;
  final PaymentIntentResource paymentIntent;
  final ChargeResource charge;
  final BalanceTransactionResource balanceTransaction;

  factory Stripe(String apiKey) {
    final client = Client(_host, _version, apiKey);
    return Stripe.withClient(client);
  }

  Stripe.withClient(this.client)
      : session = SessionResource(client),
        refund = RefundResource(client),
        paymentIntent = PaymentIntentResource(client),
        charge = ChargeResource(client),
        balanceTransaction = BalanceTransactionResource(client);
}
