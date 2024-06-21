library stripe;

import 'package:meta/meta.dart';
import 'package:stripe/src/resources/subscription_schedule.dart';

import 'src/client.dart';
import 'src/resources/balance_transaction.dart';
import 'src/resources/charge.dart';
import 'src/resources/checkout_session.dart';
import 'src/resources/customer.dart';
import 'src/resources/payment_intent.dart';
import 'src/resources/portal_session.dart';
import 'src/resources/price.dart';
import 'src/resources/product.dart';
import 'src/resources/refund.dart';
import 'src/resources/subscription.dart';
import 'src/resources/subscription_item.dart';

export 'messages.dart';
export 'src/webhook.dart';

/// [Stripe] is the Class that provides the Interface for external calls via the
/// Stripe API.
///
/// Create an instance of this class, and use it like this:
///
///     final stripe = Stripe('privateApiKey');
///     final charge = await stripe.charge.retrieve(chargeId);
class Stripe {
  /// Our actual client implementation that communicates with Stripe.
  ///
  /// You should not need to access this, it is mostly exposed for testing, but
  /// you can use it to make requests that have not yet been implemented.
  final Client client;

  /// https://stripe.com/docs/api/checkout/sessions
  final CheckoutSessionResource checkoutSession;

  /// https://stripe.com/docs/api/billing_portal/sessions
  final PortalSessionResource portalSession;

  /// https://stripe.com/docs/api/customers
  final CustomerResource customer;

  /// https://stripe.com/docs/api/refunds
  final RefundResource refund;

  /// https://stripe.com/docs/api/payment_intents
  final PaymentIntentResource paymentIntent;

  /// https://stripe.com/docs/api/prices
  final PriceResource price;

  /// https://stripe.com/docs/api/products
  final ProductResource product;

  /// https://stripe.com/docs/api/charges
  final ChargeResource charge;

  /// https://stripe.com/docs/api/subscriptions
  final SubscriptionResource subscription;

  /// https://stripe.com/docs/api/subscription_items
  final SubscriptionItemResource subscriptionItem;

  /// https://stripe.com/docs/api/subscription_schedules
  final SubscriptionScheduleResource subscriptionSchedule;

  /// https://stripe.com/docs/api/balance_transactions
  final BalanceTransactionResource balanceTransaction;

  factory Stripe(String apiKey) {
    final client = Client(apiKey: apiKey);
    return Stripe.withClient(client);
  }

  @visibleForTesting
  Stripe.withClient(this.client)
      : checkoutSession = CheckoutSessionResource(client),
        portalSession = PortalSessionResource(client),
        customer = CustomerResource(client),
        refund = RefundResource(client),
        paymentIntent = PaymentIntentResource(client),
        price = PriceResource(client),
        product = ProductResource(client),
        subscription = SubscriptionResource(client),
        subscriptionItem = SubscriptionItemResource(client),
        subscriptionSchedule = SubscriptionScheduleResource(client),
        charge = ChargeResource(client),
        balanceTransaction = BalanceTransactionResource(client);
}
