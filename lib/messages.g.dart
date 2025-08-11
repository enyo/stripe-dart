// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
  city: json['city'] as String?,
  country: json['country'] as String?,
  line1: json['line1'] as String?,
  line2: json['line2'] as String?,
  postalCode: json['postal_code'] as String?,
  state: json['state'] as String?,
);

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
  'city': ?instance.city,
  'country': ?instance.country,
  'line1': ?instance.line1,
  'line2': ?instance.line2,
  'postal_code': ?instance.postalCode,
  'state': ?instance.state,
};

BalanceTransaction _$BalanceTransactionFromJson(Map<String, dynamic> json) =>
    BalanceTransaction(
      object: $enumDecode(_$BalanceTransactionObjectEnumMap, json['object']),
      id: json['id'] as String,
      amount: (json['amount'] as num).toInt(),
      fee: (json['fee'] as num).toInt(),
      feeDetails: (json['fee_details'] as List<dynamic>)
          .map((e) => FeeDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      net: (json['net'] as num).toInt(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$BalanceTransactionToJson(BalanceTransaction instance) =>
    <String, dynamic>{
      'object': _$BalanceTransactionObjectEnumMap[instance.object]!,
      'id': instance.id,
      'amount': instance.amount,
      'fee': instance.fee,
      'fee_details': instance.feeDetails.map((e) => e.toJson()).toList(),
      'net': instance.net,
      'currency': instance.currency,
    };

const _$BalanceTransactionObjectEnumMap = {
  BalanceTransactionObject.balanceTransaction: 'balance_transaction',
};

FeeDetails _$FeeDetailsFromJson(Map<String, dynamic> json) => FeeDetails(
  amount: (json['amount'] as num).toInt(),
  application: json['application'] as String?,
  currency: json['currency'] as String,
  description: json['description'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$FeeDetailsToJson(FeeDetails instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'application': ?instance.application,
      'currency': instance.currency,
      'description': instance.description,
      'type': instance.type,
    };

BillingDetails _$BillingDetailsFromJson(Map<String, dynamic> json) =>
    BillingDetails(
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      email: json['email'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$BillingDetailsToJson(BillingDetails instance) =>
    <String, dynamic>{
      'address': ?instance.address?.toJson(),
      'email': ?instance.email,
      'name': ?instance.name,
      'phone': ?instance.phone,
    };

Charge _$ChargeFromJson(Map<String, dynamic> json) => Charge(
  object: $enumDecode(_$ChargeObjectEnumMap, json['object']),
  id: json['id'] as String,
  balanceTransaction: json['balance_transaction'] as String,
  paymentMethodDetails: PaymentMethodDetails.fromJson(
    json['payment_method_details'] as Map<String, dynamic>,
  ),
  livemode: json['livemode'] as bool,
);

Map<String, dynamic> _$ChargeToJson(Charge instance) => <String, dynamic>{
  'object': _$ChargeObjectEnumMap[instance.object]!,
  'id': instance.id,
  'balance_transaction': instance.balanceTransaction,
  'payment_method_details': instance.paymentMethodDetails.toJson(),
  'livemode': instance.livemode,
};

const _$ChargeObjectEnumMap = {ChargeObject.charge: 'charge'};

PaymentMethodDetails _$PaymentMethodDetailsFromJson(
  Map<String, dynamic> json,
) => PaymentMethodDetails(
  card: json['card'] == null
      ? null
      : PaymentMethodDetailsCard.fromJson(json['card'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PaymentMethodDetailsToJson(
  PaymentMethodDetails instance,
) => <String, dynamic>{'card': ?instance.card?.toJson()};

PaymentMethodDetailsCard _$PaymentMethodDetailsCardFromJson(
  Map<String, dynamic> json,
) => PaymentMethodDetailsCard(
  brand: json['brand'] as String,
  last4: json['last4'] as String,
);

Map<String, dynamic> _$PaymentMethodDetailsCardToJson(
  PaymentMethodDetailsCard instance,
) => <String, dynamic>{'brand': instance.brand, 'last4': instance.last4};

CheckoutSession _$CheckoutSessionFromJson(Map<String, dynamic> json) =>
    CheckoutSession(
      object: json['object'] as String,
      id: json['id'] as String,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>)
          .map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toList(),
      clientReferenceId: json['client_reference_id'] as String?,
      customer: json['customer'] as String?,
      paymentIntent: json['payment_intent'] as String?,
      status: json['status'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$CheckoutSessionToJson(CheckoutSession instance) =>
    <String, dynamic>{
      'object': instance.object,
      'id': instance.id,
      'client_reference_id': ?instance.clientReferenceId,
      'customer': ?instance.customer,
      'payment_intent': ?instance.paymentIntent,
      'payment_method_types': instance.paymentMethodTypes
          .map((e) => _$PaymentMethodTypeEnumMap[e]!)
          .toList(),
      'status': ?instance.status,
      'url': ?instance.url,
    };

const _$PaymentMethodTypeEnumMap = {
  PaymentMethodType.acssDebit: 'acss_debit',
  PaymentMethodType.affirm: 'affirm',
  PaymentMethodType.afterpayClearpay: 'afterpay_clearpay',
  PaymentMethodType.alipay: 'alipay',
  PaymentMethodType.amazonPay: 'amazon_pay',
  PaymentMethodType.auBecsDebit: 'au_becs_debit',
  PaymentMethodType.bacsDebit: 'bacs_debit',
  PaymentMethodType.bancontact: 'bancontact',
  PaymentMethodType.blik: 'blik',
  PaymentMethodType.boleto: 'boleto',
  PaymentMethodType.card: 'card',
  PaymentMethodType.cashapp: 'cashapp',
  PaymentMethodType.customerBalance: 'customer_balance',
  PaymentMethodType.eps: 'eps',
  PaymentMethodType.fpx: 'fpx',
  PaymentMethodType.giropay: 'giropay',
  PaymentMethodType.grabpay: 'grabpay',
  PaymentMethodType.ideal: 'ideal',
  PaymentMethodType.klarna: 'klarna',
  PaymentMethodType.konbini: 'konbini',
  PaymentMethodType.link: 'link',
  PaymentMethodType.oxxo: 'oxxo',
  PaymentMethodType.p24: 'p24',
  PaymentMethodType.paynow: 'paynow',
  PaymentMethodType.pix: 'pix',
  PaymentMethodType.promptpay: 'promptpay',
  PaymentMethodType.sepaDebit: 'sepa_debit',
  PaymentMethodType.sofort: 'sofort',
  PaymentMethodType.usBankAccount: 'us_bank_account',
  PaymentMethodType.wechatPay: 'wechat_pay',
};

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
  object: $enumDecode(_$CustomerObjectEnumMap, json['object']),
  id: json['id'] as String,
  invoiceSettings: InvoiceSettings.fromJson(
    json['invoice_settings'] as Map<String, dynamic>,
  ),
  description: json['description'] as String?,
  email: json['email'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  name: json['name'] as String?,
);

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
  'object': _$CustomerObjectEnumMap[instance.object]!,
  'id': instance.id,
  'invoice_settings': instance.invoiceSettings.toJson(),
  'description': ?instance.description,
  'email': ?instance.email,
  'metadata': ?instance.metadata,
  'name': ?instance.name,
};

const _$CustomerObjectEnumMap = {CustomerObject.customer: 'customer'};

InvoiceSettings _$InvoiceSettingsFromJson(Map<String, dynamic> json) =>
    InvoiceSettings(
      defaultPaymentMethod: json['default_payment_method'] as String?,
    );

Map<String, dynamic> _$InvoiceSettingsToJson(InvoiceSettings instance) =>
    <String, dynamic>{'default_payment_method': ?instance.defaultPaymentMethod};

DataList<T> _$DataListFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => DataList<T>(
  object: $enumDecode(_$SubListObjectEnumMap, json['object']),
  data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
  hasMore: json['has_more'] as bool,
  url: json['url'] as String,
);

Map<String, dynamic> _$DataListToJson<T>(
  DataList<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'object': _$SubListObjectEnumMap[instance.object]!,
  'data': instance.data.map(toJsonT).toList(),
  'has_more': instance.hasMore,
  'url': instance.url,
};

const _$SubListObjectEnumMap = {
  SubListObject.list: 'list',
  SubListObject.searchResult: 'search_result',
};

EventData<T> _$EventDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => EventData<T>(
  object: fromJsonT(json['object']),
  previousAttributes: json['previous_attributes'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$EventDataToJson<T>(
  EventData<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'object': toJsonT(instance.object),
  'previous_attributes': ?instance.previousAttributes,
};

SubscriptionEvent _$SubscriptionEventFromJson(Map<String, dynamic> json) =>
    SubscriptionEvent(
      object: $enumDecode(_$EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      created: (json['created'] as num).toInt(),
      type: json['type'] as String,
      data: EventData<Subscription>.fromJson(
        json['data'] as Map<String, dynamic>,
        (value) => Subscription.fromJson(value as Map<String, dynamic>),
      ),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$SubscriptionEventToJson(SubscriptionEvent instance) =>
    <String, dynamic>{
      'object': _$EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'created': instance.created,
      'data': instance.data.toJson((value) => value.toJson()),
      'type': instance.type,
      'livemode': instance.livemode,
    };

const _$EventObjectEnumMap = {EventObject.event: 'event'};

CustomerEvent _$CustomerEventFromJson(Map<String, dynamic> json) =>
    CustomerEvent(
      object: $enumDecode(_$EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      created: (json['created'] as num).toInt(),
      type: json['type'] as String,
      data: EventData<Customer>.fromJson(
        json['data'] as Map<String, dynamic>,
        (value) => Customer.fromJson(value as Map<String, dynamic>),
      ),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$CustomerEventToJson(CustomerEvent instance) =>
    <String, dynamic>{
      'object': _$EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'created': instance.created,
      'data': instance.data.toJson((value) => value.toJson()),
      'type': instance.type,
      'livemode': instance.livemode,
    };

ChargeEvent _$ChargeEventFromJson(Map<String, dynamic> json) => ChargeEvent(
  object: $enumDecode(_$EventObjectEnumMap, json['object']),
  id: json['id'] as String,
  created: (json['created'] as num).toInt(),
  type: json['type'] as String,
  data: EventData<Charge>.fromJson(
    json['data'] as Map<String, dynamic>,
    (value) => Charge.fromJson(value as Map<String, dynamic>),
  ),
  livemode: json['livemode'] as bool,
);

Map<String, dynamic> _$ChargeEventToJson(ChargeEvent instance) =>
    <String, dynamic>{
      'object': _$EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'created': instance.created,
      'data': instance.data.toJson((value) => value.toJson()),
      'type': instance.type,
      'livemode': instance.livemode,
    };

PaymentIntentEvent _$PaymentIntentEventFromJson(Map<String, dynamic> json) =>
    PaymentIntentEvent(
      object: $enumDecode(_$EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      created: (json['created'] as num).toInt(),
      type: json['type'] as String,
      data: EventData<PaymentIntent>.fromJson(
        json['data'] as Map<String, dynamic>,
        (value) => PaymentIntent.fromJson(value as Map<String, dynamic>),
      ),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$PaymentIntentEventToJson(PaymentIntentEvent instance) =>
    <String, dynamic>{
      'object': _$EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'created': instance.created,
      'data': instance.data.toJson((value) => value.toJson()),
      'type': instance.type,
      'livemode': instance.livemode,
    };

RefundEvent _$RefundEventFromJson(Map<String, dynamic> json) => RefundEvent(
  object: $enumDecode(_$EventObjectEnumMap, json['object']),
  id: json['id'] as String,
  created: (json['created'] as num).toInt(),
  type: json['type'] as String,
  data: EventData<Refund>.fromJson(
    json['data'] as Map<String, dynamic>,
    (value) => Refund.fromJson(value as Map<String, dynamic>),
  ),
  livemode: json['livemode'] as bool,
);

Map<String, dynamic> _$RefundEventToJson(RefundEvent instance) =>
    <String, dynamic>{
      'object': _$EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'created': instance.created,
      'data': instance.data.toJson((value) => value.toJson()),
      'type': instance.type,
      'livemode': instance.livemode,
    };

CheckoutSessionEvent _$CheckoutSessionEventFromJson(
  Map<String, dynamic> json,
) => CheckoutSessionEvent(
  object: $enumDecode(_$EventObjectEnumMap, json['object']),
  id: json['id'] as String,
  created: (json['created'] as num).toInt(),
  type: json['type'] as String,
  data: EventData<CheckoutSession>.fromJson(
    json['data'] as Map<String, dynamic>,
    (value) => CheckoutSession.fromJson(value as Map<String, dynamic>),
  ),
  livemode: json['livemode'] as bool,
);

Map<String, dynamic> _$CheckoutSessionEventToJson(
  CheckoutSessionEvent instance,
) => <String, dynamic>{
  'object': _$EventObjectEnumMap[instance.object]!,
  'id': instance.id,
  'created': instance.created,
  'data': instance.data.toJson((value) => value.toJson()),
  'type': instance.type,
  'livemode': instance.livemode,
};

PaymentMethodEvent _$PaymentMethodEventFromJson(Map<String, dynamic> json) =>
    PaymentMethodEvent(
      object: $enumDecode(_$EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      created: (json['created'] as num).toInt(),
      type: json['type'] as String,
      data: EventData<PaymentMethod>.fromJson(
        json['data'] as Map<String, dynamic>,
        (value) => PaymentMethod.fromJson(value as Map<String, dynamic>),
      ),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$PaymentMethodEventToJson(PaymentMethodEvent instance) =>
    <String, dynamic>{
      'object': _$EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'created': instance.created,
      'data': instance.data.toJson((value) => value.toJson()),
      'type': instance.type,
      'livemode': instance.livemode,
    };

InvoiceEvent _$InvoiceEventFromJson(Map<String, dynamic> json) => InvoiceEvent(
  object: $enumDecode(_$EventObjectEnumMap, json['object']),
  id: json['id'] as String,
  created: (json['created'] as num).toInt(),
  type: json['type'] as String,
  data: EventData<Invoice>.fromJson(
    json['data'] as Map<String, dynamic>,
    (value) => Invoice.fromJson(value as Map<String, dynamic>),
  ),
  livemode: json['livemode'] as bool,
);

Map<String, dynamic> _$InvoiceEventToJson(InvoiceEvent instance) =>
    <String, dynamic>{
      'object': _$EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'created': instance.created,
      'data': instance.data.toJson((value) => value.toJson()),
      'type': instance.type,
      'livemode': instance.livemode,
    };

Invoice _$InvoiceFromJson(Map<String, dynamic> json) => Invoice(
  id: json['id'] as String,
  currency: json['currency'] as String,
  customer: json['customer'] as String,
  total: (json['total'] as num).toInt(),
  description: json['description'] as String?,
  hostedInvoiceUrl: json['hosted_invoice_url'] as String?,
  status: json['status'] as String?,
  subscription: json['subscription'] as String?,
  paymentIntent: json['payment_intent'] as String?,
  accountCountry: json['account_country'] as String?,
  accountName: json['account_name'] as String?,
);

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
  'id': instance.id,
  'currency': instance.currency,
  'customer': instance.customer,
  'total': instance.total,
  'description': ?instance.description,
  'hosted_invoice_url': ?instance.hostedInvoiceUrl,
  'status': ?instance.status,
  'subscription': ?instance.subscription,
  'payment_intent': ?instance.paymentIntent,
  'account_country': ?instance.accountCountry,
  'account_name': ?instance.accountName,
};

PaymentIntent _$PaymentIntentFromJson(Map<String, dynamic> json) =>
    PaymentIntent(
      object: $enumDecode(_$PaymentIntentObjectEnumMap, json['object']),
      id: json['id'] as String,
      amount: (json['amount'] as num).toInt(),
      amountReceived: (json['amount_received'] as num).toInt(),
      clientSecret: json['client_secret'] as String,
      currency: json['currency'] as String,
      status: json['status'] as String,
      automaticPaymentMethods: json['automatic_payment_methods'] == null
          ? const AutomaticPaymentMethods()
          : AutomaticPaymentMethods.fromJson(
              json['automatic_payment_methods'] as Map<String, dynamic>,
            ),
      canceledAt: _$JsonConverterFromJson<int, DateTime>(
        json['canceled_at'],
        const TimestampConverter().fromJson,
      ),
      created: _$JsonConverterFromJson<int, DateTime>(
        json['created'],
        const TimestampConverter().fromJson,
      ),
      customer: json['customer'] as String?,
      description: json['description'] as String?,
      latestCharge: json['latest_charge'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      paymentMethod: json['payment_method'] as String?,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toSet(),
      receiptEmail: json['receipt_email'] as String?,
      setupFutureUsage: $enumDecodeNullable(
        _$SetupFutureUsageEnumMap,
        json['setup_future_usage'],
      ),
      shipping: json['shipping'] == null
          ? null
          : ShippingSpecification.fromJson(
              json['shipping'] as Map<String, dynamic>,
            ),
      statementDescriptor: json['statement_descriptor'] as String?,
      statementDescriptorSuffix: json['statement_descriptor_suffix'] as String?,
    );

Map<String, dynamic> _$PaymentIntentToJson(
  PaymentIntent instance,
) => <String, dynamic>{
  'object': _$PaymentIntentObjectEnumMap[instance.object]!,
  'id': instance.id,
  'amount': instance.amount,
  'amount_received': instance.amountReceived,
  'automatic_payment_methods': instance.automaticPaymentMethods.toJson(),
  'client_secret': instance.clientSecret,
  'currency': instance.currency,
  'status': instance.status,
  'canceled_at': ?_$JsonConverterToJson<int, DateTime>(
    instance.canceledAt,
    const TimestampConverter().toJson,
  ),
  'created': ?_$JsonConverterToJson<int, DateTime>(
    instance.created,
    const TimestampConverter().toJson,
  ),
  'customer': ?instance.customer,
  'description': ?instance.description,
  'latest_charge': ?instance.latestCharge,
  'metadata': ?instance.metadata,
  'payment_method': ?instance.paymentMethod,
  'payment_method_types': ?instance.paymentMethodTypes
      ?.map((e) => _$PaymentMethodTypeEnumMap[e]!)
      .toList(),
  'receipt_email': ?instance.receiptEmail,
  'setup_future_usage': ?_$SetupFutureUsageEnumMap[instance.setupFutureUsage],
  'shipping': ?instance.shipping?.toJson(),
  'statement_descriptor': ?instance.statementDescriptor,
  'statement_descriptor_suffix': ?instance.statementDescriptorSuffix,
};

const _$PaymentIntentObjectEnumMap = {
  PaymentIntentObject.paymentIntent: 'payment_intent',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

const _$SetupFutureUsageEnumMap = {
  SetupFutureUsage.on_session: 'on_session',
  SetupFutureUsage.off_session: 'off_session',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

AutomaticPaymentMethods _$AutomaticPaymentMethodsFromJson(
  Map<String, dynamic> json,
) => AutomaticPaymentMethods(enabled: json['enabled'] as bool? ?? false);

Map<String, dynamic> _$AutomaticPaymentMethodsToJson(
  AutomaticPaymentMethods instance,
) => <String, dynamic>{'enabled': instance.enabled};

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) =>
    PaymentMethod(
      id: json['id'] as String,
      livemode: json['livemode'] as bool,
      type: json['type'] as String,
      billingDetails: BillingDetails.fromJson(
        json['billing_details'] as Map<String, dynamic>,
      ),
      customer: json['customer'] as String?,
      card: json['card'] == null
          ? null
          : PaymentMethodCard.fromJson(json['card'] as Map<String, dynamic>),
      usBankAccount: json['us_bank_account'] == null
          ? null
          : PaymentMethodUsBankAccount.fromJson(
              json['us_bank_account'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'livemode': instance.livemode,
      'type': instance.type,
      'billing_details': instance.billingDetails.toJson(),
      'customer': ?instance.customer,
      'card': ?instance.card?.toJson(),
      'us_bank_account': ?instance.usBankAccount?.toJson(),
    };

PaymentMethodCard _$PaymentMethodCardFromJson(Map<String, dynamic> json) =>
    PaymentMethodCard(
      brand: json['brand'] as String,
      last4: json['last4'] as String,
      expMonth: (json['exp_month'] as num).toInt(),
      expYear: (json['exp_year'] as num).toInt(),
      wallet: json['wallet'] == null
          ? null
          : Wallet.fromJson(json['wallet'] as Map<String, dynamic>),
      displayBrand: json['display_brand'] as String?,
      fingerprint: json['fingerprint'] as String?,
    );

Map<String, dynamic> _$PaymentMethodCardToJson(PaymentMethodCard instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'last4': instance.last4,
      'exp_month': instance.expMonth,
      'exp_year': instance.expYear,
      'wallet': ?instance.wallet?.toJson(),
      'display_brand': ?instance.displayBrand,
      'fingerprint': ?instance.fingerprint,
    };

Wallet _$WalletFromJson(Map<String, dynamic> json) => Wallet(
  type: json['type'] as String,
  dynamicLast4: json['dynamic_last4'] as String?,
);

Map<String, dynamic> _$WalletToJson(Wallet instance) => <String, dynamic>{
  'type': instance.type,
  'dynamic_last4': ?instance.dynamicLast4,
};

PaymentMethodUsBankAccount _$PaymentMethodUsBankAccountFromJson(
  Map<String, dynamic> json,
) => PaymentMethodUsBankAccount(
  bankName: json['bank_name'] as String?,
  fingerprint: json['fingerprint'] as String?,
  last4: json['last4'] as String?,
  routingNumber: json['routing_number'] as String?,
);

Map<String, dynamic> _$PaymentMethodUsBankAccountToJson(
  PaymentMethodUsBankAccount instance,
) => <String, dynamic>{
  'bank_name': ?instance.bankName,
  'fingerprint': ?instance.fingerprint,
  'last4': ?instance.last4,
  'routing_number': ?instance.routingNumber,
};

PortalSession _$PortalSessionFromJson(Map<String, dynamic> json) =>
    PortalSession(
      object: json['object'] as String,
      id: json['id'] as String,
      customer: json['customer'] as String,
      livemode: json['livemode'] as bool,
      url: json['url'] as String,
    );

Map<String, dynamic> _$PortalSessionToJson(PortalSession instance) =>
    <String, dynamic>{
      'object': instance.object,
      'id': instance.id,
      'customer': instance.customer,
      'livemode': instance.livemode,
      'url': instance.url,
    };

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
  object: $enumDecode(_$PriceObjectEnumMap, json['object']),
  id: json['id'] as String,
  active: json['active'] as bool,
  currency: json['currency'] as String,
  product: json['product'] as String,
  type: $enumDecode(_$PriceTypeEnumMap, json['type']),
  recurring: json['recurring'] == null
      ? null
      : Recurring.fromJson(json['recurring'] as Map<String, dynamic>),
  unitAmount: (json['unit_amount'] as num).toInt(),
);

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
  'object': _$PriceObjectEnumMap[instance.object]!,
  'id': instance.id,
  'active': instance.active,
  'currency': instance.currency,
  'product': instance.product,
  'type': _$PriceTypeEnumMap[instance.type]!,
  'recurring': ?instance.recurring?.toJson(),
  'unit_amount': instance.unitAmount,
};

const _$PriceObjectEnumMap = {PriceObject.price: 'price'};

const _$PriceTypeEnumMap = {
  PriceType.oneTime: 'one_time',
  PriceType.recurring: 'recurring',
};

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
  object: $enumDecode(_$ProductObjectEnumMap, json['object']),
  id: json['id'] as String,
  active: json['active'] as bool,
  name: json['name'] as String,
  description: json['description'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  defaultPrice: json['default_price'] as String?,
);

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
  'object': _$ProductObjectEnumMap[instance.object]!,
  'id': instance.id,
  'active': instance.active,
  'description': ?instance.description,
  'metadata': ?instance.metadata,
  'name': instance.name,
  'default_price': ?instance.defaultPrice,
};

const _$ProductObjectEnumMap = {ProductObject.product: 'product'};

Refund _$RefundFromJson(Map<String, dynamic> json) => Refund(
  object: $enumDecode(_$RefundObjectEnumMap, json['object']),
  id: json['id'] as String,
);

Map<String, dynamic> _$RefundToJson(Refund instance) => <String, dynamic>{
  'object': _$RefundObjectEnumMap[instance.object]!,
  'id': instance.id,
};

const _$RefundObjectEnumMap = {RefundObject.refund: 'refund'};

CreateCheckoutSessionRequest _$CreateCheckoutSessionRequestFromJson(
  Map<String, dynamic> json,
) => CreateCheckoutSessionRequest(
  successUrl: json['success_url'] as String,
  cancelUrl: json['cancel_url'] as String,
  paymentMethodTypes: (json['payment_method_types'] as List<dynamic>)
      .map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
      .toList(),
  mode: $enumDecodeNullable(_$SessionModeEnumMap, json['mode']),
  clientReferenceId: json['client_reference_id'] as String?,
  customerEmail: json['customer_email'] as String?,
  customer: json['customer'] as String?,
  lineItems: (json['line_items'] as List<dynamic>?)
      ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  billingAddressCollection: $enumDecodeNullable(
    _$BillingAddressCollectionEnumMap,
    json['billing_address_collection'],
  ),
  automaticTax: json['automatic_tax'] == null
      ? null
      : AutomaticTax.fromJson(json['automatic_tax'] as Map<String, dynamic>),
  taxIdCollection: json['tax_id_collection'] == null
      ? null
      : TaxIdCollection.fromJson(
          json['tax_id_collection'] as Map<String, dynamic>,
        ),
  paymentIntentData: json['payment_intent_data'] == null
      ? null
      : PaymentIntentData.fromJson(
          json['payment_intent_data'] as Map<String, dynamic>,
        ),
  subscriptionData: json['subscription_data'] == null
      ? null
      : SubscriptionData.fromJson(
          json['subscription_data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$CreateCheckoutSessionRequestToJson(
  CreateCheckoutSessionRequest instance,
) => <String, dynamic>{
  'success_url': instance.successUrl,
  'cancel_url': instance.cancelUrl,
  'mode': ?_$SessionModeEnumMap[instance.mode],
  'payment_method_types': instance.paymentMethodTypes
      .map((e) => _$PaymentMethodTypeEnumMap[e]!)
      .toList(),
  'client_reference_id': ?instance.clientReferenceId,
  'customer_email': ?instance.customerEmail,
  'customer': ?instance.customer,
  'line_items': ?instance.lineItems?.map((e) => e.toJson()).toList(),
  'billing_address_collection':
      ?_$BillingAddressCollectionEnumMap[instance.billingAddressCollection],
  'automatic_tax': ?instance.automaticTax?.toJson(),
  'tax_id_collection': ?instance.taxIdCollection?.toJson(),
  'payment_intent_data': ?instance.paymentIntentData?.toJson(),
  'subscription_data': ?instance.subscriptionData?.toJson(),
};

const _$SessionModeEnumMap = {
  SessionMode.payment: 'payment',
  SessionMode.setup: 'setup',
  SessionMode.subscription: 'subscription',
};

const _$BillingAddressCollectionEnumMap = {
  BillingAddressCollection.auto: 'auto',
  BillingAddressCollection.required: 'required',
};

LineItem _$LineItemFromJson(Map<String, dynamic> json) => LineItem(
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
  quantity: (json['quantity'] as num?)?.toInt(),
  description: json['description'] as String?,
  price: json['price'] as String?,
  priceData: json['price_data'] == null
      ? null
      : PriceData.fromJson(json['price_data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LineItemToJson(LineItem instance) => <String, dynamic>{
  'images': ?instance.images,
  'quantity': ?instance.quantity,
  'description': ?instance.description,
  'price_data': ?instance.priceData?.toJson(),
  'price': ?instance.price,
};

PriceData _$PriceDataFromJson(Map<String, dynamic> json) => PriceData(
  currency: json['currency'] as String,
  product: json['product'] as String?,
  unitAmount: (json['unit_amount'] as num?)?.toInt(),
  productData: json['product_data'] == null
      ? null
      : ProductData.fromJson(json['product_data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PriceDataToJson(PriceData instance) => <String, dynamic>{
  'currency': instance.currency,
  'product': ?instance.product,
  'unit_amount': ?instance.unitAmount,
  'product_data': ?instance.productData?.toJson(),
};

ProductData _$ProductDataFromJson(Map<String, dynamic> json) => ProductData(
  name: json['name'] as String,
  description: json['description'] as String?,
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$ProductDataToJson(ProductData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': ?instance.description,
      'images': ?instance.images,
    };

AutomaticTax _$AutomaticTaxFromJson(Map<String, dynamic> json) =>
    AutomaticTax(enabled: json['enabled'] as bool);

Map<String, dynamic> _$AutomaticTaxToJson(AutomaticTax instance) =>
    <String, dynamic>{'enabled': instance.enabled};

TaxIdCollection _$TaxIdCollectionFromJson(Map<String, dynamic> json) =>
    TaxIdCollection(enabled: json['enabled'] as bool);

Map<String, dynamic> _$TaxIdCollectionToJson(TaxIdCollection instance) =>
    <String, dynamic>{'enabled': instance.enabled};

PaymentIntentData _$PaymentIntentDataFromJson(Map<String, dynamic> json) =>
    PaymentIntentData(
      receiptEmail: json['receipt_email'] as String?,
      setupFutureUsage: $enumDecodeNullable(
        _$SetupFutureUsageEnumMap,
        json['setup_future_usage'],
      ),
    );

Map<String, dynamic> _$PaymentIntentDataToJson(
  PaymentIntentData instance,
) => <String, dynamic>{
  'receipt_email': ?instance.receiptEmail,
  'setup_future_usage': ?_$SetupFutureUsageEnumMap[instance.setupFutureUsage],
};

SubscriptionData _$SubscriptionDataFromJson(Map<String, dynamic> json) =>
    SubscriptionData(
      trialEnd: (json['trial_end'] as num?)?.toInt(),
      trialPeriodDays: (json['trial_period_days'] as num?)?.toInt(),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$SubscriptionDataToJson(SubscriptionData instance) =>
    <String, dynamic>{
      'trial_end': ?instance.trialEnd,
      'trial_period_days': ?instance.trialPeriodDays,
      'metadata': ?instance.metadata,
    };

CreateCustomerRequest _$CreateCustomerRequestFromJson(
  Map<String, dynamic> json,
) => CreateCustomerRequest(
  description: json['description'] as String?,
  email: json['email'] as String?,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  name: json['name'] as String?,
  paymentMethod: json['payment_method'] as String?,
  phoneNumber: json['phone_number'] as String?,
);

Map<String, dynamic> _$CreateCustomerRequestToJson(
  CreateCustomerRequest instance,
) => <String, dynamic>{
  'description': ?instance.description,
  'email': ?instance.email,
  'metadata': ?instance.metadata,
  'name': ?instance.name,
  'payment_method': ?instance.paymentMethod,
  'phone_number': ?instance.phoneNumber,
};

CreatePaymentIntentRequest _$CreatePaymentIntentRequestFromJson(
  Map<String, dynamic> json,
) => CreatePaymentIntentRequest(
  amount: (json['amount'] as num).toInt(),
  currency: json['currency'] as String,
  automaticPaymentMethods: json['automatic_payment_methods'] == null
      ? null
      : AutomaticPaymentMethods.fromJson(
          json['automatic_payment_methods'] as Map<String, dynamic>,
        ),
  confirm: json['confirm'] as bool?,
  customer: json['customer'] as String?,
  description: json['description'] as String?,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  offSession: json['off_session'] as bool?,
  paymentMethod: json['payment_method'] as String?,
  paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
      ?.map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
      .toSet(),
  receiptEmail: json['receipt_email'] as String?,
  setupFutureUsage: $enumDecodeNullable(
    _$SetupFutureUsageEnumMap,
    json['setup_future_usage'],
  ),
  shipping: json['shipping'] == null
      ? null
      : ShippingSpecification.fromJson(
          json['shipping'] as Map<String, dynamic>,
        ),
  statementDescriptor: json['statement_descriptor'] as String?,
  statementDescriptorSuffix: json['statement_descriptor_suffix'] as String?,
);

Map<String, dynamic> _$CreatePaymentIntentRequestToJson(
  CreatePaymentIntentRequest instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'automatic_payment_methods': ?instance.automaticPaymentMethods?.toJson(),
  'currency': instance.currency,
  'confirm': ?instance.confirm,
  'customer': ?instance.customer,
  'description': ?instance.description,
  'metadata': ?instance.metadata,
  'off_session': ?instance.offSession,
  'payment_method': ?instance.paymentMethod,
  'payment_method_types': ?instance.paymentMethodTypes
      ?.map((e) => _$PaymentMethodTypeEnumMap[e]!)
      .toList(),
  'receipt_email': ?instance.receiptEmail,
  'setup_future_usage': ?_$SetupFutureUsageEnumMap[instance.setupFutureUsage],
  'shipping': ?instance.shipping?.toJson(),
  'statement_descriptor': ?instance.statementDescriptor,
  'statement_descriptor_suffix': ?instance.statementDescriptorSuffix,
};

CreatePortalSessionRequest _$CreatePortalSessionRequestFromJson(
  Map<String, dynamic> json,
) => CreatePortalSessionRequest(
  customer: json['customer'] as String,
  returnUrl: json['return_url'] as String?,
);

Map<String, dynamic> _$CreatePortalSessionRequestToJson(
  CreatePortalSessionRequest instance,
) => <String, dynamic>{
  'customer': instance.customer,
  'return_url': ?instance.returnUrl,
};

CreatePriceRequest _$CreatePriceRequestFromJson(Map<String, dynamic> json) =>
    CreatePriceRequest(
      currency: json['currency'] as String,
      product: json['product'] as String?,
      unitAmount: (json['unit_amount'] as num?)?.toInt(),
      active: json['active'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      nickname: json['nickname'] as String?,
      recurring: json['recurring'] == null
          ? null
          : Recurring.fromJson(json['recurring'] as Map<String, dynamic>),
      parameters: json['parameters'] == null
          ? null
          : PriceParameters.fromJson(
              json['parameters'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$CreatePriceRequestToJson(CreatePriceRequest instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'product': ?instance.product,
      'unit_amount': ?instance.unitAmount,
      'active': ?instance.active,
      'metadata': ?instance.metadata,
      'nickname': ?instance.nickname,
      'recurring': ?instance.recurring?.toJson(),
      'parameters': ?instance.parameters?.toJson(),
    };

Recurring _$RecurringFromJson(Map<String, dynamic> json) => Recurring(
  interval: $enumDecode(_$RecurringIntervalEnumMap, json['interval']),
  aggregateUsage: $enumDecodeNullable(
    _$AggregateUsageEnumMap,
    json['aggregate_usage'],
  ),
  intervalCount: (json['interval_count'] as num?)?.toInt(),
  usageType: json['usage_type'] as String?,
);

Map<String, dynamic> _$RecurringToJson(Recurring instance) => <String, dynamic>{
  'interval': _$RecurringIntervalEnumMap[instance.interval]!,
  'aggregate_usage': ?_$AggregateUsageEnumMap[instance.aggregateUsage],
  'interval_count': ?instance.intervalCount,
  'usage_type': ?instance.usageType,
};

const _$RecurringIntervalEnumMap = {
  RecurringInterval.day: 'day',
  RecurringInterval.week: 'week',
  RecurringInterval.month: 'month',
  RecurringInterval.year: 'year',
};

const _$AggregateUsageEnumMap = {
  AggregateUsage.sum: 'sum',
  AggregateUsage.last_during_period: 'last_during_period',
  AggregateUsage.last_ever: 'last_ever',
  AggregateUsage.max: 'max',
};

PriceParameters _$PriceParametersFromJson(Map<String, dynamic> json) =>
    PriceParameters(
      customUnitAmount: (json['custom_unit_amount'] as num?)?.toInt(),
      productData: json['product_data'] == null
          ? null
          : ProductData.fromJson(json['product_data'] as Map<String, dynamic>),
      tiers: (json['tiers'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      tiersMode: json['tiers_mode'] as String?,
      billingScheme: json['billing_scheme'] as String?,
      currencyOptions: json['currency_options'] as Map<String, dynamic>?,
      lookupKey: json['lookup_key'] as String?,
      taxBehavior: json['tax_behavior'] as String?,
      transferLookupKey: json['transfer_lookup_key'] as String?,
      transformQuantity: json['transform_quantity'] as Map<String, dynamic>?,
      unitAmountDecimal: (json['unit_amount_decimal'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PriceParametersToJson(PriceParameters instance) =>
    <String, dynamic>{
      'custom_unit_amount': ?instance.customUnitAmount,
      'product_data': ?instance.productData?.toJson(),
      'tiers': ?instance.tiers,
      'tiers_mode': ?instance.tiersMode,
      'billing_scheme': ?instance.billingScheme,
      'currency_options': ?instance.currencyOptions,
      'lookup_key': ?instance.lookupKey,
      'tax_behavior': ?instance.taxBehavior,
      'transfer_lookup_key': ?instance.transferLookupKey,
      'transform_quantity': ?instance.transformQuantity,
      'unit_amount_decimal': ?instance.unitAmountDecimal,
    };

CreateProductRequest _$CreateProductRequestFromJson(
  Map<String, dynamic> json,
) => CreateProductRequest(
  name: json['name'] as String,
  id: json['id'] as String?,
  active: json['active'] as bool? ?? true,
  description: json['description'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  defaultPriceData: json['default_price_data'] as Map<String, dynamic>?,
  features: (json['features'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
  packageDimensions: json['package_dimensions'] as Map<String, dynamic>?,
  shippable: json['shippable'] as bool?,
  statementDescriptor: json['statement_descriptor'] as String?,
  taxCode: json['tax_code'] as String?,
  unitLabel: json['unit_label'] as String?,
  url: json['url'] as String?,
);

Map<String, dynamic> _$CreateProductRequestToJson(
  CreateProductRequest instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'name': instance.name,
  'active': instance.active,
  'description': ?instance.description,
  'metadata': ?instance.metadata,
  'default_price_data': ?instance.defaultPriceData,
  'features': ?instance.features,
  'images': ?instance.images,
  'package_dimensions': ?instance.packageDimensions,
  'shippable': ?instance.shippable,
  'statement_descriptor': ?instance.statementDescriptor,
  'tax_code': ?instance.taxCode,
  'unit_label': ?instance.unitLabel,
  'url': ?instance.url,
};

CreateRefundRequest _$CreateRefundRequestFromJson(Map<String, dynamic> json) =>
    CreateRefundRequest(
      charge: json['charge'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      paymentIntent: json['payment_intent'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$CreateRefundRequestToJson(
  CreateRefundRequest instance,
) => <String, dynamic>{
  'charge': ?instance.charge,
  'amount': ?instance.amount,
  'payment_intent': ?instance.paymentIntent,
  'reason': ?instance.reason,
};

CreateSubscriptionScheduleRequest _$CreateSubscriptionScheduleRequestFromJson(
  Map<String, dynamic> json,
) => CreateSubscriptionScheduleRequest(
  fromSubscription: json['from_subscription'] as String?,
);

Map<String, dynamic> _$CreateSubscriptionScheduleRequestToJson(
  CreateSubscriptionScheduleRequest instance,
) => <String, dynamic>{'from_subscription': ?instance.fromSubscription};

ListPricesRequest _$ListPricesRequestFromJson(Map<String, dynamic> json) =>
    ListPricesRequest(
      active: json['active'] as bool?,
      currency: json['currency'] as String?,
      product: json['product'] as String?,
    );

Map<String, dynamic> _$ListPricesRequestToJson(ListPricesRequest instance) =>
    <String, dynamic>{
      'active': ?instance.active,
      'currency': ?instance.currency,
      'product': ?instance.product,
    };

ListProductsRequest _$ListProductsRequestFromJson(Map<String, dynamic> json) =>
    ListProductsRequest(active: json['active'] as bool?);

Map<String, dynamic> _$ListProductsRequestToJson(
  ListProductsRequest instance,
) => <String, dynamic>{'active': ?instance.active};

ListSubscriptionItemsRequest _$ListSubscriptionItemsRequestFromJson(
  Map<String, dynamic> json,
) => ListSubscriptionItemsRequest(
  subscription: json['subscription'] as String?,
  endingBefore: json['ending_before'] as String?,
  limit: (json['limit'] as num?)?.toInt(),
  startingAfter: json['starting_after'] as String?,
);

Map<String, dynamic> _$ListSubscriptionItemsRequestToJson(
  ListSubscriptionItemsRequest instance,
) => <String, dynamic>{
  'subscription': ?instance.subscription,
  'ending_before': ?instance.endingBefore,
  'limit': ?instance.limit,
  'starting_after': ?instance.startingAfter,
};

ListSubscriptionsRequest _$ListSubscriptionsRequestFromJson(
  Map<String, dynamic> json,
) => ListSubscriptionsRequest(
  customer: json['customer'] as String?,
  price: json['price'] as String?,
  status: $enumDecodeNullable(_$SubscriptionStatusEnumMap, json['status']),
);

Map<String, dynamic> _$ListSubscriptionsRequestToJson(
  ListSubscriptionsRequest instance,
) => <String, dynamic>{
  'customer': ?instance.customer,
  'price': ?instance.price,
  'status': ?_$SubscriptionStatusEnumMap[instance.status],
};

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.incomplete: 'incomplete',
  SubscriptionStatus.incompleteExpired: 'incomplete_expired',
  SubscriptionStatus.trialing: 'trialing',
  SubscriptionStatus.active: 'active',
  SubscriptionStatus.pastDue: 'past_due',
  SubscriptionStatus.canceled: 'canceled',
  SubscriptionStatus.unpaid: 'unpaid',
  SubscriptionStatus.all: 'all',
  SubscriptionStatus.ended: 'ended',
};

ListSubscriptionSchedulesRequest _$ListSubscriptionSchedulesRequestFromJson(
  Map<String, dynamic> json,
) => ListSubscriptionSchedulesRequest(
  customer: json['customer'] as String?,
  limit: (json['limit'] as num?)?.toInt(),
);

Map<String, dynamic> _$ListSubscriptionSchedulesRequestToJson(
  ListSubscriptionSchedulesRequest instance,
) => <String, dynamic>{
  'customer': ?instance.customer,
  'limit': ?instance.limit,
};

UpdateCustomerRequest _$UpdateCustomerRequestFromJson(
  Map<String, dynamic> json,
) => UpdateCustomerRequest(
  id: json['id'] as String,
  description: json['description'] as String?,
  email: json['email'] as String?,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  name: json['name'] as String?,
  paymentMethod: json['payment_method'] as String?,
  phoneNumber: json['phone_number'] as String?,
);

Map<String, dynamic> _$UpdateCustomerRequestToJson(
  UpdateCustomerRequest instance,
) => <String, dynamic>{
  'description': ?instance.description,
  'email': ?instance.email,
  'metadata': ?instance.metadata,
  'name': ?instance.name,
  'payment_method': ?instance.paymentMethod,
  'phone_number': ?instance.phoneNumber,
  'id': instance.id,
};

SubscriptionUpdate _$SubscriptionUpdateFromJson(Map<String, dynamic> json) =>
    SubscriptionUpdate(
      cancelAtPeriodEnd: json['cancel_at_period_end'] as bool?,
    );

Map<String, dynamic> _$SubscriptionUpdateToJson(SubscriptionUpdate instance) =>
    <String, dynamic>{'cancel_at_period_end': ?instance.cancelAtPeriodEnd};

SubscriptionItemUpdate _$SubscriptionItemUpdateFromJson(
  Map<String, dynamic> json,
) => SubscriptionItemUpdate(
  paymentBehavior: $enumDecodeNullable(
    _$PaymentBehaviorEnumMap,
    json['payment_behavior'],
  ),
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  price: json['price'] as String?,
  prorationBehavior: $enumDecodeNullable(
    _$ProrationBehaviorEnumMap,
    json['proration_behavior'],
  ),
  quantity: (json['quantity'] as num?)?.toInt(),
  billingThresholds: json['billing_thresholds'] as Map<String, dynamic>?,
  offSession: json['off_session'] as bool?,
  priceData: json['price_data'] as Map<String, dynamic>?,
  prorationDate: json['proration_date'] == null
      ? null
      : DateTime.parse(json['proration_date'] as String),
  taxRates: (json['tax_rates'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$SubscriptionItemUpdateToJson(
  SubscriptionItemUpdate instance,
) => <String, dynamic>{
  'metadata': ?instance.metadata,
  'payment_behavior': ?_$PaymentBehaviorEnumMap[instance.paymentBehavior],
  'price': ?instance.price,
  'proration_behavior': ?_$ProrationBehaviorEnumMap[instance.prorationBehavior],
  'quantity': ?instance.quantity,
  'billing_thresholds': ?instance.billingThresholds,
  'off_session': ?instance.offSession,
  'price_data': ?instance.priceData,
  'proration_date': ?instance.prorationDate?.toIso8601String(),
  'tax_rates': ?instance.taxRates,
};

const _$PaymentBehaviorEnumMap = {
  PaymentBehavior.allowIncomplete: 'allow_incomplete',
  PaymentBehavior.defaultIncomplete: 'default_incomplete',
  PaymentBehavior.errorIfIncomplete: 'error_if_incomplete',
  PaymentBehavior.pendingIfIncomplete: 'pending_if_incomplete',
};

const _$ProrationBehaviorEnumMap = {
  ProrationBehavior.alwaysInvoice: 'always_invoice',
  ProrationBehavior.createProrations: 'create_prorations',
  ProrationBehavior.none: 'none',
};

UpdateSubscriptionScheduleRequest _$UpdateSubscriptionScheduleRequestFromJson(
  Map<String, dynamic> json,
) => UpdateSubscriptionScheduleRequest(
  phases: (json['phases'] as List<dynamic>)
      .map(
        (e) =>
            UpdateSubscriptionSchedulePhase.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  endBehavior: $enumDecodeNullable(
    _$SubscriptionScheduleEndBehaviorEnumMap,
    json['end_behavior'],
  ),
);

Map<String, dynamic> _$UpdateSubscriptionScheduleRequestToJson(
  UpdateSubscriptionScheduleRequest instance,
) => <String, dynamic>{
  'phases': instance.phases.map((e) => e.toJson()).toList(),
  'end_behavior':
      ?_$SubscriptionScheduleEndBehaviorEnumMap[instance.endBehavior],
};

const _$SubscriptionScheduleEndBehaviorEnumMap = {
  SubscriptionScheduleEndBehavior.release: 'release',
  SubscriptionScheduleEndBehavior.cancel: 'cancel',
};

UpdateSubscriptionSchedulePhase _$UpdateSubscriptionSchedulePhaseFromJson(
  Map<String, dynamic> json,
) => UpdateSubscriptionSchedulePhase(
  items: (json['items'] as List<dynamic>)
      .map(
        (e) => UpdateSubscriptionSchedulePhaseItem.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  startDate: _$JsonConverterFromJson<int, DateTime>(
    json['start_date'],
    const TimestampConverter().fromJson,
  ),
  endDate: _$JsonConverterFromJson<int, DateTime>(
    json['end_date'],
    const TimestampConverter().fromJson,
  ),
);

Map<String, dynamic> _$UpdateSubscriptionSchedulePhaseToJson(
  UpdateSubscriptionSchedulePhase instance,
) => <String, dynamic>{
  'start_date': ?_$JsonConverterToJson<int, DateTime>(
    instance.startDate,
    const TimestampConverter().toJson,
  ),
  'end_date': ?_$JsonConverterToJson<int, DateTime>(
    instance.endDate,
    const TimestampConverter().toJson,
  ),
  'items': instance.items.map((e) => e.toJson()).toList(),
};

UpdateSubscriptionSchedulePhaseItem
_$UpdateSubscriptionSchedulePhaseItemFromJson(Map<String, dynamic> json) =>
    UpdateSubscriptionSchedulePhaseItem(
      price: json['price'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$UpdateSubscriptionSchedulePhaseItemToJson(
  UpdateSubscriptionSchedulePhaseItem instance,
) => <String, dynamic>{'price': instance.price, 'quantity': instance.quantity};

ShippingSpecification _$ShippingSpecificationFromJson(
  Map<String, dynamic> json,
) => ShippingSpecification(
  address: Address.fromJson(json['address'] as Map<String, dynamic>),
  name: json['name'] as String,
  carrier: json['carrier'] as String?,
  phone: json['phone'] as String?,
  trackingNumber: json['tracking_number'] as String?,
);

Map<String, dynamic> _$ShippingSpecificationToJson(
  ShippingSpecification instance,
) => <String, dynamic>{
  'address': instance.address.toJson(),
  'name': instance.name,
  'carrier': ?instance.carrier,
  'phone': ?instance.phone,
  'tracking_number': ?instance.trackingNumber,
};

StripeApiError _$StripeApiErrorFromJson(Map<String, dynamic> json) =>
    StripeApiError(
      type: $enumDecode(_$StripeApiErrorTypeEnumMap, json['type']),
      code: json['code'] as String?,
      declineCode: json['decline_code'] as String?,
      message: json['message'] as String?,
      param: json['param'] as String?,
      paymentIntent: json['payment_intent'] == null
          ? null
          : PaymentIntent.fromJson(
              json['payment_intent'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$StripeApiErrorToJson(StripeApiError instance) =>
    <String, dynamic>{
      'type': _$StripeApiErrorTypeEnumMap[instance.type]!,
      'code': ?instance.code,
      'decline_code': ?instance.declineCode,
      'message': ?instance.message,
      'param': ?instance.param,
      'payment_intent': ?instance.paymentIntent?.toJson(),
    };

const _$StripeApiErrorTypeEnumMap = {
  StripeApiErrorType.apiError: 'api_error',
  StripeApiErrorType.cardError: 'card_error',
  StripeApiErrorType.idempotencyError: 'idempotency_error',
  StripeApiErrorType.invalidRequestError: 'invalid_request_error',
};

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) => Subscription(
  object: $enumDecode(_$SubscriptionObjectEnumMap, json['object']),
  id: json['id'] as String,
  created: (json['created'] as num).toInt(),
  customer: json['customer'] as String,
  status: $enumDecode(_$SubscriptionStatusEnumMap, json['status']),
  items: DataList<SubscriptionItem>.fromJson(
    json['items'] as Map<String, dynamic>,
    (value) => SubscriptionItem.fromJson(value as Map<String, dynamic>),
  ),
  currentPeriodStart: const TimestampConverter().fromJson(
    (json['current_period_start'] as num).toInt(),
  ),
  currentPeriodEnd: const TimestampConverter().fromJson(
    (json['current_period_end'] as num).toInt(),
  ),
  startDate: const TimestampConverter().fromJson(
    (json['start_date'] as num).toInt(),
  ),
  billingCycleAnchor: const TimestampConverter().fromJson(
    (json['billing_cycle_anchor'] as num).toInt(),
  ),
  cancelAt: _$JsonConverterFromJson<int, DateTime>(
    json['cancel_at'],
    const TimestampConverter().fromJson,
  ),
  cancelAtPeriodEnd: json['cancel_at_period_end'] as bool? ?? false,
  endedAt: _$JsonConverterFromJson<int, DateTime>(
    json['ended_at'],
    const TimestampConverter().fromJson,
  ),
  metadata: json['metadata'] as Map<String, dynamic>?,
  latestInvoice: json['latest_invoice'] as String?,
);

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
    <String, dynamic>{
      'object': _$SubscriptionObjectEnumMap[instance.object]!,
      'id': instance.id,
      'created': instance.created,
      'customer': instance.customer,
      'current_period_start': const TimestampConverter().toJson(
        instance.currentPeriodStart,
      ),
      'current_period_end': const TimestampConverter().toJson(
        instance.currentPeriodEnd,
      ),
      'start_date': const TimestampConverter().toJson(instance.startDate),
      'billing_cycle_anchor': const TimestampConverter().toJson(
        instance.billingCycleAnchor,
      ),
      'cancel_at': ?_$JsonConverterToJson<int, DateTime>(
        instance.cancelAt,
        const TimestampConverter().toJson,
      ),
      'cancel_at_period_end': instance.cancelAtPeriodEnd,
      'ended_at': ?_$JsonConverterToJson<int, DateTime>(
        instance.endedAt,
        const TimestampConverter().toJson,
      ),
      'status': _$SubscriptionStatusEnumMap[instance.status]!,
      'items': instance.items.toJson((value) => value.toJson()),
      'metadata': ?instance.metadata,
      'latest_invoice': ?instance.latestInvoice,
    };

const _$SubscriptionObjectEnumMap = {
  SubscriptionObject.subscription: 'subscription',
};

SubscriptionItem _$SubscriptionItemFromJson(Map<String, dynamic> json) =>
    SubscriptionItem(
      object: $enumDecode(_$SubscriptionItemObjectEnumMap, json['object']),
      id: json['id'] as String,
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
      subscription: json['subscription'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$SubscriptionItemToJson(SubscriptionItem instance) =>
    <String, dynamic>{
      'object': _$SubscriptionItemObjectEnumMap[instance.object]!,
      'id': instance.id,
      'price': instance.price.toJson(),
      'subscription': instance.subscription,
      'quantity': instance.quantity,
    };

const _$SubscriptionItemObjectEnumMap = {
  SubscriptionItemObject.subscriptionItem: 'subscription_item',
};

SubscriptionSchedule _$SubscriptionScheduleFromJson(
  Map<String, dynamic> json,
) => SubscriptionSchedule(
  object: $enumDecode(_$SubscriptionScheduleObjectEnumMap, json['object']),
  id: json['id'] as String,
  phases: (json['phases'] as List<dynamic>)
      .map((e) => SubscriptionSchedulePhase.fromJson(e as Map<String, dynamic>))
      .toList(),
  status: $enumDecode(_$SubscriptionScheduleStatusEnumMap, json['status']),
  customer: json['customer'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  subscription: json['subscription'] as String?,
);

Map<String, dynamic> _$SubscriptionScheduleToJson(
  SubscriptionSchedule instance,
) => <String, dynamic>{
  'object': _$SubscriptionScheduleObjectEnumMap[instance.object]!,
  'id': instance.id,
  'customer': ?instance.customer,
  'metadata': ?instance.metadata,
  'phases': instance.phases.map((e) => e.toJson()).toList(),
  'status': _$SubscriptionScheduleStatusEnumMap[instance.status]!,
  'subscription': ?instance.subscription,
};

const _$SubscriptionScheduleObjectEnumMap = {
  SubscriptionScheduleObject.subscriptionSchedule: 'subscription_schedule',
};

const _$SubscriptionScheduleStatusEnumMap = {
  SubscriptionScheduleStatus.notStarted: 'not_started',
  SubscriptionScheduleStatus.active: 'active',
  SubscriptionScheduleStatus.completed: 'completed',
  SubscriptionScheduleStatus.released: 'released',
  SubscriptionScheduleStatus.canceled: 'canceled',
};

SubscriptionSchedulePhase _$SubscriptionSchedulePhaseFromJson(
  Map<String, dynamic> json,
) => SubscriptionSchedulePhase(
  items: (json['items'] as List<dynamic>)
      .map(
        (e) =>
            SubscriptionSchedulePhaseItem.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  startDate: _$JsonConverterFromJson<int, DateTime>(
    json['start_date'],
    const TimestampConverter().fromJson,
  ),
  endDate: _$JsonConverterFromJson<int, DateTime>(
    json['end_date'],
    const TimestampConverter().fromJson,
  ),
);

Map<String, dynamic> _$SubscriptionSchedulePhaseToJson(
  SubscriptionSchedulePhase instance,
) => <String, dynamic>{
  'start_date': ?_$JsonConverterToJson<int, DateTime>(
    instance.startDate,
    const TimestampConverter().toJson,
  ),
  'end_date': ?_$JsonConverterToJson<int, DateTime>(
    instance.endDate,
    const TimestampConverter().toJson,
  ),
  'items': instance.items.map((e) => e.toJson()).toList(),
};

SubscriptionSchedulePhaseItem _$SubscriptionSchedulePhaseItemFromJson(
  Map<String, dynamic> json,
) => SubscriptionSchedulePhaseItem(
  price: json['price'] as String,
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$SubscriptionSchedulePhaseItemToJson(
  SubscriptionSchedulePhaseItem instance,
) => <String, dynamic>{'price': instance.price, 'quantity': instance.quantity};
