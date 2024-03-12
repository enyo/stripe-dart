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

Map<String, dynamic> _$AddressToJson(Address instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('city', instance.city);
  writeNotNull('country', instance.country);
  writeNotNull('line1', instance.line1);
  writeNotNull('line2', instance.line2);
  writeNotNull('postal_code', instance.postalCode);
  writeNotNull('state', instance.state);
  return val;
}

BalanceTransaction _$BalanceTransactionFromJson(Map<String, dynamic> json) =>
    BalanceTransaction(
      object: $enumDecode(_$_BalanceTransactionObjectEnumMap, json['object']),
      id: json['id'] as String,
      amount: json['amount'] as int,
      fee: json['fee'] as int,
      feeDetails: (json['fee_details'] as List<dynamic>)
          .map((e) => FeeDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      net: json['net'] as int,
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$BalanceTransactionToJson(BalanceTransaction instance) =>
    <String, dynamic>{
      'object': _$_BalanceTransactionObjectEnumMap[instance.object]!,
      'id': instance.id,
      'amount': instance.amount,
      'fee': instance.fee,
      'fee_details': instance.feeDetails.map((e) => e.toJson()).toList(),
      'net': instance.net,
      'currency': instance.currency,
    };

const _$_BalanceTransactionObjectEnumMap = {
  _BalanceTransactionObject.balance_transaction: 'balance_transaction',
};

FeeDetails _$FeeDetailsFromJson(Map<String, dynamic> json) => FeeDetails(
      amount: json['amount'] as int,
      application: json['application'] as String?,
      currency: json['currency'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$FeeDetailsToJson(FeeDetails instance) {
  final val = <String, dynamic>{
    'amount': instance.amount,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('application', instance.application);
  val['currency'] = instance.currency;
  val['description'] = instance.description;
  val['type'] = instance.type;
  return val;
}

BillingDetails _$BillingDetailsFromJson(Map<String, dynamic> json) =>
    BillingDetails(
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      email: json['email'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$BillingDetailsToJson(BillingDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address?.toJson());
  writeNotNull('email', instance.email);
  writeNotNull('name', instance.name);
  writeNotNull('phone', instance.phone);
  return val;
}

Charge _$ChargeFromJson(Map<String, dynamic> json) => Charge(
      object: $enumDecode(_$_ChargeObjectEnumMap, json['object']),
      id: json['id'] as String,
      balanceTransaction: json['balance_transaction'] as String,
      paymentMethodDetails: PaymentMethodDetails.fromJson(
          json['payment_method_details'] as Map<String, dynamic>),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$ChargeToJson(Charge instance) => <String, dynamic>{
      'object': _$_ChargeObjectEnumMap[instance.object]!,
      'id': instance.id,
      'balance_transaction': instance.balanceTransaction,
      'payment_method_details': instance.paymentMethodDetails.toJson(),
      'livemode': instance.livemode,
    };

const _$_ChargeObjectEnumMap = {
  _ChargeObject.charge: 'charge',
};

PaymentMethodDetails _$PaymentMethodDetailsFromJson(
        Map<String, dynamic> json) =>
    PaymentMethodDetails(
      card: json['card'] == null
          ? null
          : PaymentMethodDetailsCard.fromJson(
              json['card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentMethodDetailsToJson(
    PaymentMethodDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card', instance.card?.toJson());
  return val;
}

PaymentMethodDetailsCard _$PaymentMethodDetailsCardFromJson(
        Map<String, dynamic> json) =>
    PaymentMethodDetailsCard(
      brand: json['brand'] as String,
      last4: json['last4'] as String,
    );

Map<String, dynamic> _$PaymentMethodDetailsCardToJson(
        PaymentMethodDetailsCard instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'last4': instance.last4,
    };

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
    );

Map<String, dynamic> _$CheckoutSessionToJson(CheckoutSession instance) {
  final val = <String, dynamic>{
    'object': instance.object,
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('client_reference_id', instance.clientReferenceId);
  writeNotNull('customer', instance.customer);
  writeNotNull('payment_intent', instance.paymentIntent);
  val['payment_method_types'] = instance.paymentMethodTypes
      .map((e) => _$PaymentMethodTypeEnumMap[e]!)
      .toList();
  return val;
}

const _$PaymentMethodTypeEnumMap = {
  PaymentMethodType.acss_debit: 'acss_debit',
  PaymentMethodType.affirm: 'affirm',
  PaymentMethodType.afterpay_clearpay: 'afterpay_clearpay',
  PaymentMethodType.alipay: 'alipay',
  PaymentMethodType.au_becs_debit: 'au_becs_debit',
  PaymentMethodType.bacs_debit: 'bacs_debit',
  PaymentMethodType.bancontact: 'bancontact',
  PaymentMethodType.blik: 'blik',
  PaymentMethodType.boleto: 'boleto',
  PaymentMethodType.card: 'card',
  PaymentMethodType.cashapp: 'cashapp',
  PaymentMethodType.customer_balance: 'customer_balance',
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
  PaymentMethodType.sepa_debit: 'sepa_debit',
  PaymentMethodType.sofort: 'sofort',
  PaymentMethodType.us_bank_account: 'us_bank_account',
  PaymentMethodType.wechat_pay: 'wechat_pay',
};

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      object: $enumDecode(_$_CustomerObjectEnumMap, json['object']),
      id: json['id'] as String,
      invoiceSettings: InvoiceSettings.fromJson(
          json['invoice_settings'] as Map<String, dynamic>),
      description: json['description'] as String?,
      email: json['email'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) {
  final val = <String, dynamic>{
    'object': _$_CustomerObjectEnumMap[instance.object]!,
    'id': instance.id,
    'invoice_settings': instance.invoiceSettings.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('email', instance.email);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('name', instance.name);
  return val;
}

const _$_CustomerObjectEnumMap = {
  _CustomerObject.customer: 'customer',
};

InvoiceSettings _$InvoiceSettingsFromJson(Map<String, dynamic> json) =>
    InvoiceSettings(
      defaultPaymentMethod: json['default_payment_method'] as String?,
    );

Map<String, dynamic> _$InvoiceSettingsToJson(InvoiceSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('default_payment_method', instance.defaultPaymentMethod);
  return val;
}

DataList<T> _$DataListFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    DataList<T>(
      object: $enumDecode(_$_SubListObjectEnumMap, json['object']),
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      hasMore: json['has_more'] as bool,
      url: json['url'] as String,
    );

Map<String, dynamic> _$DataListToJson<T>(
  DataList<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'object': _$_SubListObjectEnumMap[instance.object]!,
      'data': instance.data.map(toJsonT).toList(),
      'has_more': instance.hasMore,
      'url': instance.url,
    };

const _$_SubListObjectEnumMap = {
  _SubListObject.list: 'list',
  _SubListObject.searchResult: 'search_result',
};

EventData<T> _$EventDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    EventData<T>(
      object: fromJsonT(json['object']),
    );

Map<String, dynamic> _$EventDataToJson<T>(
  EventData<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'object': toJsonT(instance.object),
    };

SubscriptionEvent _$SubscriptionEventFromJson(Map<String, dynamic> json) =>
    SubscriptionEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<Subscription>.fromJson(
          json['data'] as Map<String, dynamic>,
          (value) => Subscription.fromJson(value as Map<String, dynamic>)),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$SubscriptionEventToJson(SubscriptionEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
      'livemode': instance.livemode,
    };

const _$_EventObjectEnumMap = {
  _EventObject.event: 'event',
};

CustomerEvent _$CustomerEventFromJson(Map<String, dynamic> json) =>
    CustomerEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<Customer>.fromJson(json['data'] as Map<String, dynamic>,
          (value) => Customer.fromJson(value as Map<String, dynamic>)),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$CustomerEventToJson(CustomerEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
      'livemode': instance.livemode,
    };

ChargeEvent _$ChargeEventFromJson(Map<String, dynamic> json) => ChargeEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<Charge>.fromJson(json['data'] as Map<String, dynamic>,
          (value) => Charge.fromJson(value as Map<String, dynamic>)),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$ChargeEventToJson(ChargeEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
      'livemode': instance.livemode,
    };

PaymentIntentEvent _$PaymentIntentEventFromJson(Map<String, dynamic> json) =>
    PaymentIntentEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<PaymentIntent>.fromJson(
          json['data'] as Map<String, dynamic>,
          (value) => PaymentIntent.fromJson(value as Map<String, dynamic>)),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$PaymentIntentEventToJson(PaymentIntentEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
      'livemode': instance.livemode,
    };

RefundEvent _$RefundEventFromJson(Map<String, dynamic> json) => RefundEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<Refund>.fromJson(json['data'] as Map<String, dynamic>,
          (value) => Refund.fromJson(value as Map<String, dynamic>)),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$RefundEventToJson(RefundEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
      'livemode': instance.livemode,
    };

CheckoutSessionEvent _$CheckoutSessionEventFromJson(
        Map<String, dynamic> json) =>
    CheckoutSessionEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<CheckoutSession>.fromJson(
          json['data'] as Map<String, dynamic>,
          (value) => CheckoutSession.fromJson(value as Map<String, dynamic>)),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$CheckoutSessionEventToJson(
        CheckoutSessionEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
      'livemode': instance.livemode,
    };

PaymentMethodEvent _$PaymentMethodEventFromJson(Map<String, dynamic> json) =>
    PaymentMethodEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<PaymentMethod>.fromJson(
          json['data'] as Map<String, dynamic>,
          (value) => PaymentMethod.fromJson(value as Map<String, dynamic>)),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$PaymentMethodEventToJson(PaymentMethodEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
      'livemode': instance.livemode,
    };

InvoiceEvent _$InvoiceEventFromJson(Map<String, dynamic> json) => InvoiceEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<Invoice>.fromJson(json['data'] as Map<String, dynamic>,
          (value) => Invoice.fromJson(value as Map<String, dynamic>)),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$InvoiceEventToJson(InvoiceEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
      'livemode': instance.livemode,
    };

Invoice _$InvoiceFromJson(Map<String, dynamic> json) => Invoice(
      id: json['id'] as String,
      currency: json['currency'] as String,
      customer: json['customer'] as String,
      total: json['total'] as int,
      description: json['description'] as String?,
      hostedInvoiceUrl: json['hosted_invoice_url'] as String?,
      status: json['status'] as String?,
      subscription: json['subscription'] as String?,
      accountCountry: json['account_country'] as String?,
      accountName: json['account_name'] as String?,
    );

Map<String, dynamic> _$InvoiceToJson(Invoice instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'currency': instance.currency,
    'customer': instance.customer,
    'total': instance.total,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('hosted_invoice_url', instance.hostedInvoiceUrl);
  writeNotNull('status', instance.status);
  writeNotNull('subscription', instance.subscription);
  writeNotNull('account_country', instance.accountCountry);
  writeNotNull('account_name', instance.accountName);
  return val;
}

PaymentIntent _$PaymentIntentFromJson(Map<String, dynamic> json) =>
    PaymentIntent(
      object: $enumDecode(_$_PaymentIntentObjectEnumMap, json['object']),
      id: json['id'] as String,
      amount: json['amount'] as int,
      amountReceived: json['amount_received'] as int,
      clientSecret: json['client_secret'] as String,
      currency: json['currency'] as String,
      status: json['status'] as String,
      automaticPaymentMethods: json['automatic_payment_methods'] == null
          ? const AutomaticPaymentMethods()
          : AutomaticPaymentMethods.fromJson(
              json['automatic_payment_methods'] as Map<String, dynamic>),
      canceledAt: _$JsonConverterFromJson<int, DateTime>(
          json['canceled_at'], const TimestampConverter().fromJson),
      created: _$JsonConverterFromJson<int, DateTime>(
          json['created'], const TimestampConverter().fromJson),
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
          _$SetupFutureUsageEnumMap, json['setup_future_usage']),
      shipping: json['shipping'] == null
          ? null
          : ShippingSpecification.fromJson(
              json['shipping'] as Map<String, dynamic>),
      statementDescriptor: json['statement_descriptor'] as String?,
      statementDescriptorSuffix: json['statement_descriptor_suffix'] as String?,
    );

Map<String, dynamic> _$PaymentIntentToJson(PaymentIntent instance) {
  final val = <String, dynamic>{
    'object': _$_PaymentIntentObjectEnumMap[instance.object]!,
    'id': instance.id,
    'amount': instance.amount,
    'amount_received': instance.amountReceived,
    'automatic_payment_methods': instance.automaticPaymentMethods.toJson(),
    'client_secret': instance.clientSecret,
    'currency': instance.currency,
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'canceled_at',
      _$JsonConverterToJson<int, DateTime>(
          instance.canceledAt, const TimestampConverter().toJson));
  writeNotNull(
      'created',
      _$JsonConverterToJson<int, DateTime>(
          instance.created, const TimestampConverter().toJson));
  writeNotNull('customer', instance.customer);
  writeNotNull('description', instance.description);
  writeNotNull('latest_charge', instance.latestCharge);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull(
      'payment_method_types',
      instance.paymentMethodTypes
          ?.map((e) => _$PaymentMethodTypeEnumMap[e]!)
          .toList());
  writeNotNull('receipt_email', instance.receiptEmail);
  writeNotNull('setup_future_usage',
      _$SetupFutureUsageEnumMap[instance.setupFutureUsage]);
  writeNotNull('shipping', instance.shipping?.toJson());
  writeNotNull('statement_descriptor', instance.statementDescriptor);
  writeNotNull(
      'statement_descriptor_suffix', instance.statementDescriptorSuffix);
  return val;
}

const _$_PaymentIntentObjectEnumMap = {
  _PaymentIntentObject.payment_intent: 'payment_intent',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$SetupFutureUsageEnumMap = {
  SetupFutureUsage.on_session: 'on_session',
  SetupFutureUsage.off_session: 'off_session',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

AutomaticPaymentMethods _$AutomaticPaymentMethodsFromJson(
        Map<String, dynamic> json) =>
    AutomaticPaymentMethods(
      enabled: json['enabled'] as bool? ?? false,
    );

Map<String, dynamic> _$AutomaticPaymentMethodsToJson(
        AutomaticPaymentMethods instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
    };

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) =>
    PaymentMethod(
      id: json['id'] as String,
      livemode: json['livemode'] as bool,
      type: json['type'] as String,
      billingDetails: BillingDetails.fromJson(
          json['billing_details'] as Map<String, dynamic>),
      customer: json['customer'] as String?,
      card: json['card'] == null
          ? null
          : PaymentMethodCard.fromJson(json['card'] as Map<String, dynamic>),
      usBankAccount: json['us_bank_account'] == null
          ? null
          : PaymentMethodUsBankAccount.fromJson(
              json['us_bank_account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'livemode': instance.livemode,
    'type': instance.type,
    'billing_details': instance.billingDetails.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer', instance.customer);
  writeNotNull('card', instance.card?.toJson());
  writeNotNull('us_bank_account', instance.usBankAccount?.toJson());
  return val;
}

PaymentMethodCard _$PaymentMethodCardFromJson(Map<String, dynamic> json) =>
    PaymentMethodCard(
      brand: json['brand'] as String,
      last4: json['last4'] as String,
      expMonth: json['exp_month'] as int,
      expYear: json['exp_year'] as int,
      wallet: json['wallet'] == null
          ? null
          : Wallet.fromJson(json['wallet'] as Map<String, dynamic>),
      displayBrand: json['display_brand'] as String?,
      fingerprint: json['fingerprint'] as String?,
    );

Map<String, dynamic> _$PaymentMethodCardToJson(PaymentMethodCard instance) {
  final val = <String, dynamic>{
    'brand': instance.brand,
    'last4': instance.last4,
    'exp_month': instance.expMonth,
    'exp_year': instance.expYear,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('wallet', instance.wallet?.toJson());
  writeNotNull('display_brand', instance.displayBrand);
  writeNotNull('fingerprint', instance.fingerprint);
  return val;
}

Wallet _$WalletFromJson(Map<String, dynamic> json) => Wallet(
      type: json['type'] as String,
      dynamicLast4: json['dynamic_last4'] as String?,
    );

Map<String, dynamic> _$WalletToJson(Wallet instance) {
  final val = <String, dynamic>{
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dynamic_last4', instance.dynamicLast4);
  return val;
}

PaymentMethodUsBankAccount _$PaymentMethodUsBankAccountFromJson(
        Map<String, dynamic> json) =>
    PaymentMethodUsBankAccount(
      bankName: json['bank_name'] as String?,
      fingerprint: json['fingerprint'] as String?,
      last4: json['last4'] as String?,
      routingNumber: json['routing_number'] as String?,
    );

Map<String, dynamic> _$PaymentMethodUsBankAccountToJson(
    PaymentMethodUsBankAccount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bank_name', instance.bankName);
  writeNotNull('fingerprint', instance.fingerprint);
  writeNotNull('last4', instance.last4);
  writeNotNull('routing_number', instance.routingNumber);
  return val;
}

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
      object: $enumDecode(_$_PriceObjectEnumMap, json['object']),
      id: json['id'] as String,
      active: json['active'] as bool,
      currency: json['currency'] as String,
      product: json['product'] as String,
      type: $enumDecode(_$PriceTypeEnumMap, json['type']),
      recurring: json['recurring'] == null
          ? null
          : Recurring.fromJson(json['recurring'] as Map<String, dynamic>),
      unitAmount: json['unit_amount'] as int,
    );

Map<String, dynamic> _$PriceToJson(Price instance) {
  final val = <String, dynamic>{
    'object': _$_PriceObjectEnumMap[instance.object]!,
    'id': instance.id,
    'active': instance.active,
    'currency': instance.currency,
    'product': instance.product,
    'type': _$PriceTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('recurring', instance.recurring?.toJson());
  val['unit_amount'] = instance.unitAmount;
  return val;
}

const _$_PriceObjectEnumMap = {
  _PriceObject.price: 'price',
};

const _$PriceTypeEnumMap = {
  PriceType.one_time: 'one_time',
  PriceType.recurring: 'recurring',
};

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      object: $enumDecode(_$_ProductObjectEnumMap, json['object']),
      id: json['id'] as String,
      active: json['active'] as bool,
      description: json['description'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) {
  final val = <String, dynamic>{
    'object': _$_ProductObjectEnumMap[instance.object]!,
    'id': instance.id,
    'active': instance.active,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('metadata', instance.metadata);
  val['name'] = instance.name;
  return val;
}

const _$_ProductObjectEnumMap = {
  _ProductObject.product: 'product',
};

Refund _$RefundFromJson(Map<String, dynamic> json) => Refund(
      object: $enumDecode(_$_RefundObjectEnumMap, json['object']),
      id: json['id'] as String,
    );

Map<String, dynamic> _$RefundToJson(Refund instance) => <String, dynamic>{
      'object': _$_RefundObjectEnumMap[instance.object]!,
      'id': instance.id,
    };

const _$_RefundObjectEnumMap = {
  _RefundObject.refund: 'refund',
};

CreateCheckoutSessionRequest _$CreateCheckoutSessionRequestFromJson(
        Map<String, dynamic> json) =>
    CreateCheckoutSessionRequest(
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
          json['billing_address_collection']),
      automaticTax: json['automatic_tax'] == null
          ? null
          : AutomaticTax.fromJson(
              json['automatic_tax'] as Map<String, dynamic>),
      taxIdCollection: json['tax_id_collection'] == null
          ? null
          : TaxIdCollection.fromJson(
              json['tax_id_collection'] as Map<String, dynamic>),
      paymentIntentData: json['payment_intent_data'] == null
          ? null
          : PaymentIntentData.fromJson(
              json['payment_intent_data'] as Map<String, dynamic>),
      subscriptionData: json['subscription_data'] == null
          ? null
          : SubscriptionData.fromJson(
              json['subscription_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateCheckoutSessionRequestToJson(
    CreateCheckoutSessionRequest instance) {
  final val = <String, dynamic>{
    'success_url': instance.successUrl,
    'cancel_url': instance.cancelUrl,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mode', _$SessionModeEnumMap[instance.mode]);
  val['payment_method_types'] = instance.paymentMethodTypes
      .map((e) => _$PaymentMethodTypeEnumMap[e]!)
      .toList();
  writeNotNull('client_reference_id', instance.clientReferenceId);
  writeNotNull('customer_email', instance.customerEmail);
  writeNotNull('customer', instance.customer);
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull('billing_address_collection',
      _$BillingAddressCollectionEnumMap[instance.billingAddressCollection]);
  writeNotNull('automatic_tax', instance.automaticTax?.toJson());
  writeNotNull('tax_id_collection', instance.taxIdCollection?.toJson());
  writeNotNull('payment_intent_data', instance.paymentIntentData?.toJson());
  writeNotNull('subscription_data', instance.subscriptionData?.toJson());
  return val;
}

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
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      quantity: json['quantity'] as int?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      priceData: json['price_data'] == null
          ? null
          : PriceData.fromJson(json['price_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LineItemToJson(LineItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('images', instance.images);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('description', instance.description);
  writeNotNull('price_data', instance.priceData?.toJson());
  writeNotNull('price', instance.price);
  return val;
}

PriceData _$PriceDataFromJson(Map<String, dynamic> json) => PriceData(
      currency: json['currency'] as String,
      product: json['product'] as String?,
      unitAmount: json['unit_amount'] as int?,
      productData: json['product_data'] == null
          ? null
          : ProductData.fromJson(json['product_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PriceDataToJson(PriceData instance) {
  final val = <String, dynamic>{
    'currency': instance.currency,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product', instance.product);
  writeNotNull('unit_amount', instance.unitAmount);
  writeNotNull('product_data', instance.productData?.toJson());
  return val;
}

ProductData _$ProductDataFromJson(Map<String, dynamic> json) => ProductData(
      name: json['name'] as String,
      description: json['description'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProductDataToJson(ProductData instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('images', instance.images);
  return val;
}

AutomaticTax _$AutomaticTaxFromJson(Map<String, dynamic> json) => AutomaticTax(
      enabled: json['enabled'] as bool,
    );

Map<String, dynamic> _$AutomaticTaxToJson(AutomaticTax instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
    };

TaxIdCollection _$TaxIdCollectionFromJson(Map<String, dynamic> json) =>
    TaxIdCollection(
      enabled: json['enabled'] as bool,
    );

Map<String, dynamic> _$TaxIdCollectionToJson(TaxIdCollection instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
    };

PaymentIntentData _$PaymentIntentDataFromJson(Map<String, dynamic> json) =>
    PaymentIntentData(
      receiptEmail: json['receipt_email'] as String?,
      setupFutureUsage: $enumDecodeNullable(
          _$SetupFutureUsageEnumMap, json['setup_future_usage']),
    );

Map<String, dynamic> _$PaymentIntentDataToJson(PaymentIntentData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('receipt_email', instance.receiptEmail);
  writeNotNull('setup_future_usage',
      _$SetupFutureUsageEnumMap[instance.setupFutureUsage]);
  return val;
}

SubscriptionData _$SubscriptionDataFromJson(Map<String, dynamic> json) =>
    SubscriptionData(
      trialEnd: json['trial_end'] as int?,
      trialPeriodDays: json['trial_period_days'] as int?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$SubscriptionDataToJson(SubscriptionData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('trial_end', instance.trialEnd);
  writeNotNull('trial_period_days', instance.trialPeriodDays);
  writeNotNull('metadata', instance.metadata);
  return val;
}

CreateCustomerRequest _$CreateCustomerRequestFromJson(
        Map<String, dynamic> json) =>
    CreateCustomerRequest(
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
    CreateCustomerRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('email', instance.email);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('name', instance.name);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('phone_number', instance.phoneNumber);
  return val;
}

CreatePaymentIntentRequest _$CreatePaymentIntentRequestFromJson(
        Map<String, dynamic> json) =>
    CreatePaymentIntentRequest(
      amount: json['amount'] as int,
      currency: json['currency'] as String,
      automaticPaymentMethods: json['automatic_payment_methods'] == null
          ? null
          : AutomaticPaymentMethods.fromJson(
              json['automatic_payment_methods'] as Map<String, dynamic>),
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
          _$SetupFutureUsageEnumMap, json['setup_future_usage']),
      shipping: json['shipping'] == null
          ? null
          : ShippingSpecification.fromJson(
              json['shipping'] as Map<String, dynamic>),
      statementDescriptor: json['statement_descriptor'] as String?,
      statementDescriptorSuffix: json['statement_descriptor_suffix'] as String?,
    );

Map<String, dynamic> _$CreatePaymentIntentRequestToJson(
    CreatePaymentIntentRequest instance) {
  final val = <String, dynamic>{
    'amount': instance.amount,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'automatic_payment_methods', instance.automaticPaymentMethods?.toJson());
  val['currency'] = instance.currency;
  writeNotNull('confirm', instance.confirm);
  writeNotNull('customer', instance.customer);
  writeNotNull('description', instance.description);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('off_session', instance.offSession);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull(
      'payment_method_types',
      instance.paymentMethodTypes
          ?.map((e) => _$PaymentMethodTypeEnumMap[e]!)
          .toList());
  writeNotNull('receipt_email', instance.receiptEmail);
  writeNotNull('setup_future_usage',
      _$SetupFutureUsageEnumMap[instance.setupFutureUsage]);
  writeNotNull('shipping', instance.shipping?.toJson());
  writeNotNull('statement_descriptor', instance.statementDescriptor);
  writeNotNull(
      'statement_descriptor_suffix', instance.statementDescriptorSuffix);
  return val;
}

CreatePortalSessionRequest _$CreatePortalSessionRequestFromJson(
        Map<String, dynamic> json) =>
    CreatePortalSessionRequest(
      customer: json['customer'] as String,
      returnUrl: json['return_url'] as String?,
    );

Map<String, dynamic> _$CreatePortalSessionRequestToJson(
    CreatePortalSessionRequest instance) {
  final val = <String, dynamic>{
    'customer': instance.customer,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('return_url', instance.returnUrl);
  return val;
}

CreatePriceRequest _$CreatePriceRequestFromJson(Map<String, dynamic> json) =>
    CreatePriceRequest(
      currency: json['currency'] as String,
      product: json['product'] as String?,
      unitAmount: json['unit_amount'] as int?,
      active: json['active'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      nickname: json['nickname'] as String?,
      recurring: json['recurring'] == null
          ? null
          : Recurring.fromJson(json['recurring'] as Map<String, dynamic>),
      parameters: json['parameters'] == null
          ? null
          : PriceParameters.fromJson(
              json['parameters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreatePriceRequestToJson(CreatePriceRequest instance) {
  final val = <String, dynamic>{
    'currency': instance.currency,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product', instance.product);
  writeNotNull('unit_amount', instance.unitAmount);
  writeNotNull('active', instance.active);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('nickname', instance.nickname);
  writeNotNull('recurring', instance.recurring?.toJson());
  writeNotNull('parameters', instance.parameters?.toJson());
  return val;
}

Recurring _$RecurringFromJson(Map<String, dynamic> json) => Recurring(
      interval: $enumDecode(_$RecurringIntervalEnumMap, json['interval']),
      aggregateUsage:
          $enumDecodeNullable(_$AggregateUsageEnumMap, json['aggregate_usage']),
      intervalCount: json['interval_count'] as int?,
      usageType: json['usage_type'] as String?,
    );

Map<String, dynamic> _$RecurringToJson(Recurring instance) {
  final val = <String, dynamic>{
    'interval': _$RecurringIntervalEnumMap[instance.interval]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'aggregate_usage', _$AggregateUsageEnumMap[instance.aggregateUsage]);
  writeNotNull('interval_count', instance.intervalCount);
  writeNotNull('usage_type', instance.usageType);
  return val;
}

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
      customUnitAmount: json['custom_unit_amount'] as int?,
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

Map<String, dynamic> _$PriceParametersToJson(PriceParameters instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('custom_unit_amount', instance.customUnitAmount);
  writeNotNull('product_data', instance.productData?.toJson());
  writeNotNull('tiers', instance.tiers);
  writeNotNull('tiers_mode', instance.tiersMode);
  writeNotNull('billing_scheme', instance.billingScheme);
  writeNotNull('currency_options', instance.currencyOptions);
  writeNotNull('lookup_key', instance.lookupKey);
  writeNotNull('tax_behavior', instance.taxBehavior);
  writeNotNull('transfer_lookup_key', instance.transferLookupKey);
  writeNotNull('transform_quantity', instance.transformQuantity);
  writeNotNull('unit_amount_decimal', instance.unitAmountDecimal);
  return val;
}

CreateProductRequest _$CreateProductRequestFromJson(
        Map<String, dynamic> json) =>
    CreateProductRequest(
      id: json['id'] as String?,
      name: json['name'] as String,
      active: json['active'] as bool? ?? true,
      description: json['description'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      defaultPriceData: json['default_price_data'] as Map<String, dynamic>?,
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      packageDimensions: json['package_dimensions'] as Map<String, dynamic>?,
      shippable: json['shippable'] as bool?,
      statementDescriptor: json['statement_descriptor'] as String?,
      taxCode: json['tax_code'] as String?,
      unitLabel: json['unit_label'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$CreateProductRequestToJson(
    CreateProductRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['active'] = instance.active;
  writeNotNull('description', instance.description);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('default_price_data', instance.defaultPriceData);
  writeNotNull('features', instance.features);
  writeNotNull('images', instance.images);
  writeNotNull('package_dimensions', instance.packageDimensions);
  writeNotNull('shippable', instance.shippable);
  writeNotNull('statement_descriptor', instance.statementDescriptor);
  writeNotNull('tax_code', instance.taxCode);
  writeNotNull('unit_label', instance.unitLabel);
  writeNotNull('url', instance.url);
  return val;
}

CreateRefundRequest _$CreateRefundRequestFromJson(Map<String, dynamic> json) =>
    CreateRefundRequest(
      charge: json['charge'] as String?,
      amount: json['amount'] as int?,
      paymentIntent: json['payment_intent'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$CreateRefundRequestToJson(CreateRefundRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('charge', instance.charge);
  writeNotNull('amount', instance.amount);
  writeNotNull('payment_intent', instance.paymentIntent);
  writeNotNull('reason', instance.reason);
  return val;
}

ListPricesRequest _$ListPricesRequestFromJson(Map<String, dynamic> json) =>
    ListPricesRequest(
      active: json['active'] as bool?,
      currency: json['currency'] as String?,
      product: json['product'] as String?,
    );

Map<String, dynamic> _$ListPricesRequestToJson(ListPricesRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('active', instance.active);
  writeNotNull('currency', instance.currency);
  writeNotNull('product', instance.product);
  return val;
}

ListProductsRequest _$ListProductsRequestFromJson(Map<String, dynamic> json) =>
    ListProductsRequest(
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$ListProductsRequestToJson(ListProductsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('active', instance.active);
  return val;
}

ListSubscriptionItemsRequest _$ListSubscriptionItemsRequestFromJson(
        Map<String, dynamic> json) =>
    ListSubscriptionItemsRequest(
      subscription: json['subscription'] as String?,
      endingBefore: json['ending_before'] as String?,
      limit: json['limit'] as int?,
      startingAfter: json['starting_after'] as String?,
    );

Map<String, dynamic> _$ListSubscriptionItemsRequestToJson(
    ListSubscriptionItemsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subscription', instance.subscription);
  writeNotNull('ending_before', instance.endingBefore);
  writeNotNull('limit', instance.limit);
  writeNotNull('starting_after', instance.startingAfter);
  return val;
}

ListSubscriptionsRequest _$ListSubscriptionsRequestFromJson(
        Map<String, dynamic> json) =>
    ListSubscriptionsRequest(
      customer: json['customer'] as String?,
      price: json['price'] as String?,
      status: $enumDecodeNullable(_$SubscriptionStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$ListSubscriptionsRequestToJson(
    ListSubscriptionsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer', instance.customer);
  writeNotNull('price', instance.price);
  writeNotNull('status', _$SubscriptionStatusEnumMap[instance.status]);
  return val;
}

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.incomplete: 'incomplete',
  SubscriptionStatus.incomplete_expired: 'incomplete_expired',
  SubscriptionStatus.trialing: 'trialing',
  SubscriptionStatus.active: 'active',
  SubscriptionStatus.past_due: 'past_due',
  SubscriptionStatus.canceled: 'canceled',
  SubscriptionStatus.unpaid: 'unpaid',
  SubscriptionStatus.all: 'all',
  SubscriptionStatus.ended: 'ended',
};

UpdateCustomerRequest _$UpdateCustomerRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateCustomerRequest(
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
    UpdateCustomerRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('email', instance.email);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('name', instance.name);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('phone_number', instance.phoneNumber);
  val['id'] = instance.id;
  return val;
}

SubscriptionUpdate _$SubscriptionUpdateFromJson(Map<String, dynamic> json) =>
    SubscriptionUpdate(
      cancelAtPeriodEnd: json['cancel_at_period_end'] as bool?,
    );

Map<String, dynamic> _$SubscriptionUpdateToJson(SubscriptionUpdate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cancel_at_period_end', instance.cancelAtPeriodEnd);
  return val;
}

SubscriptionItemUpdate _$SubscriptionItemUpdateFromJson(
        Map<String, dynamic> json) =>
    SubscriptionItemUpdate(
      paymentBehavior: $enumDecodeNullable(
          _$PaymentBehaviorEnumMap, json['payment_behavior']),
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      price: json['price'] as String?,
      prorationBehavior: $enumDecodeNullable(
          _$ProrationBehaviorEnumMap, json['proration_behavior']),
      quantity: json['quantity'] as int?,
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
    SubscriptionItemUpdate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  writeNotNull(
      'payment_behavior', _$PaymentBehaviorEnumMap[instance.paymentBehavior]);
  writeNotNull('price', instance.price);
  writeNotNull('proration_behavior',
      _$ProrationBehaviorEnumMap[instance.prorationBehavior]);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('billing_thresholds', instance.billingThresholds);
  writeNotNull('off_session', instance.offSession);
  writeNotNull('price_data', instance.priceData);
  writeNotNull('proration_date', instance.prorationDate?.toIso8601String());
  writeNotNull('tax_rates', instance.taxRates);
  return val;
}

const _$PaymentBehaviorEnumMap = {
  PaymentBehavior.allow_incomplete: 'allow_incomplete',
  PaymentBehavior.default_incomplete: 'default_incomplete',
  PaymentBehavior.error_if_incomplete: 'error_if_incomplete',
  PaymentBehavior.pending_if_incomplete: 'pending_if_incomplete',
};

const _$ProrationBehaviorEnumMap = {
  ProrationBehavior.always_invoice: 'always_invoice',
  ProrationBehavior.create_prorations: 'create_prorations',
  ProrationBehavior.none: 'none',
};

ShippingSpecification _$ShippingSpecificationFromJson(
        Map<String, dynamic> json) =>
    ShippingSpecification(
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      name: json['name'] as String,
      carrier: json['carrier'] as String?,
      phone: json['phone'] as String?,
      trackingNumber: json['tracking_number'] as String?,
    );

Map<String, dynamic> _$ShippingSpecificationToJson(
    ShippingSpecification instance) {
  final val = <String, dynamic>{
    'address': instance.address.toJson(),
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('carrier', instance.carrier);
  writeNotNull('phone', instance.phone);
  writeNotNull('tracking_number', instance.trackingNumber);
  return val;
}

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) => Subscription(
      object: $enumDecode(_$_SubscriptionObjectEnumMap, json['object']),
      id: json['id'] as String,
      created: json['created'] as int,
      customer: json['customer'] as String,
      status: $enumDecode(_$SubscriptionStatusEnumMap, json['status']),
      items: DataList<SubscriptionItem>.fromJson(
          json['items'] as Map<String, dynamic>,
          (value) => SubscriptionItem.fromJson(value as Map<String, dynamic>)),
      currentPeriodStart: const TimestampConverter()
          .fromJson(json['current_period_start'] as int),
      currentPeriodEnd: const TimestampConverter()
          .fromJson(json['current_period_end'] as int),
      startDate: const TimestampConverter().fromJson(json['start_date'] as int),
      billingCycleAnchor: const TimestampConverter()
          .fromJson(json['billing_cycle_anchor'] as int),
      cancelAt: _$JsonConverterFromJson<int, DateTime>(
          json['cancel_at'], const TimestampConverter().fromJson),
      cancelAtPeriodEnd: json['cancel_at_period_end'] as bool? ?? false,
      endedAt: _$JsonConverterFromJson<int, DateTime>(
          json['ended_at'], const TimestampConverter().fromJson),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) {
  final val = <String, dynamic>{
    'object': _$_SubscriptionObjectEnumMap[instance.object]!,
    'id': instance.id,
    'created': instance.created,
    'customer': instance.customer,
    'current_period_start':
        const TimestampConverter().toJson(instance.currentPeriodStart),
    'current_period_end':
        const TimestampConverter().toJson(instance.currentPeriodEnd),
    'start_date': const TimestampConverter().toJson(instance.startDate),
    'billing_cycle_anchor':
        const TimestampConverter().toJson(instance.billingCycleAnchor),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'cancel_at',
      _$JsonConverterToJson<int, DateTime>(
          instance.cancelAt, const TimestampConverter().toJson));
  val['cancel_at_period_end'] = instance.cancelAtPeriodEnd;
  writeNotNull(
      'ended_at',
      _$JsonConverterToJson<int, DateTime>(
          instance.endedAt, const TimestampConverter().toJson));
  val['status'] = _$SubscriptionStatusEnumMap[instance.status]!;
  val['items'] = instance.items.toJson(
    (value) => value.toJson(),
  );
  writeNotNull('metadata', instance.metadata);
  return val;
}

const _$_SubscriptionObjectEnumMap = {
  _SubscriptionObject.subscription: 'subscription',
};

SubscriptionItem _$SubscriptionItemFromJson(Map<String, dynamic> json) =>
    SubscriptionItem(
      object: $enumDecode(_$_SubscriptionItemObjectEnumMap, json['object']),
      id: json['id'] as String,
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
      subscription: json['subscription'] as String,
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$SubscriptionItemToJson(SubscriptionItem instance) =>
    <String, dynamic>{
      'object': _$_SubscriptionItemObjectEnumMap[instance.object]!,
      'id': instance.id,
      'price': instance.price.toJson(),
      'subscription': instance.subscription,
      'quantity': instance.quantity,
    };

const _$_SubscriptionItemObjectEnumMap = {
  _SubscriptionItemObject.subscription_item: 'subscription_item',
};
