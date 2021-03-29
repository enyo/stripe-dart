// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BalanceTransaction _$BalanceTransactionFromJson(Map<String, dynamic> json) {
  return BalanceTransaction(
    object: _$enumDecode(_$_BalanceTransactionObjectEnumMap, json['object']),
    id: json['id'] as String,
    amount: json['amount'] as int,
    net: json['net'] as int,
    currency: json['currency'] as String,
  );
}

Map<String, dynamic> _$BalanceTransactionToJson(BalanceTransaction instance) =>
    <String, dynamic>{
      'object': _$_BalanceTransactionObjectEnumMap[instance.object],
      'id': instance.id,
      'amount': instance.amount,
      'net': instance.net,
      'currency': instance.currency,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$_BalanceTransactionObjectEnumMap = {
  _BalanceTransactionObject.balance_transaction: 'balance_transaction',
};

Charge _$ChargeFromJson(Map<String, dynamic> json) {
  return Charge(
    object: _$enumDecode(_$_ChargeObjectEnumMap, json['object']),
    id: json['id'] as String,
    balanceTransaction: json['balance_transaction'] as String,
    paymentMethodDetails: PaymentMethodDetails.fromJson(
        json['payment_method_details'] as Map<String, dynamic>),
    livemode: json['livemode'] as bool,
  );
}

Map<String, dynamic> _$ChargeToJson(Charge instance) => <String, dynamic>{
      'object': _$_ChargeObjectEnumMap[instance.object],
      'id': instance.id,
      'balance_transaction': instance.balanceTransaction,
      'payment_method_details': instance.paymentMethodDetails.toJson(),
      'livemode': instance.livemode,
    };

const _$_ChargeObjectEnumMap = {
  _ChargeObject.charge: 'charge',
};

PaymentMethodDetails _$PaymentMethodDetailsFromJson(Map<String, dynamic> json) {
  return PaymentMethodDetails(
    card: json['card'] == null
        ? null
        : PaymentMethodDetailsCard.fromJson(
            json['card'] as Map<String, dynamic>),
  );
}

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
    Map<String, dynamic> json) {
  return PaymentMethodDetailsCard(
    brand: json['brand'] as String,
    last4: json['last4'] as String,
  );
}

Map<String, dynamic> _$PaymentMethodDetailsCardToJson(
        PaymentMethodDetailsCard instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'last4': instance.last4,
    };

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return Customer(
    object: _$enumDecode(_$_CustomerObjectEnumMap, json['object']),
    id: json['id'] as String,
    description: json['description'] as String?,
    email: json['email'] as String?,
    metadata: json['metadata'] as Map<String, dynamic>?,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$CustomerToJson(Customer instance) {
  final val = <String, dynamic>{
    'object': _$_CustomerObjectEnumMap[instance.object],
    'id': instance.id,
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

PaymentIntent _$PaymentIntentFromJson(Map<String, dynamic> json) {
  return PaymentIntent(
    object: _$enumDecode(_$_PaymentIntentObjectEnumMap, json['object']),
    id: json['id'] as String,
    status: json['status'] as String,
    charges: SubList.fromJson(json['charges'] as Map<String, dynamic>,
        (value) => Charge.fromJson(value as Map<String, dynamic>)),
  );
}

Map<String, dynamic> _$PaymentIntentToJson(PaymentIntent instance) =>
    <String, dynamic>{
      'object': _$_PaymentIntentObjectEnumMap[instance.object],
      'id': instance.id,
      'status': instance.status,
      'charges': instance.charges.toJson(
        (value) => value.toJson(),
      ),
    };

const _$_PaymentIntentObjectEnumMap = {
  _PaymentIntentObject.payment_intent: 'payment_intent',
};

Refund _$RefundFromJson(Map<String, dynamic> json) {
  return Refund(
    object: _$enumDecode(_$_RefundObjectEnumMap, json['object']),
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$RefundToJson(Refund instance) => <String, dynamic>{
      'object': _$_RefundObjectEnumMap[instance.object],
      'id': instance.id,
    };

const _$_RefundObjectEnumMap = {
  _RefundObject.refund: 'refund',
};

CreateCustomerRequest _$CreateCustomerRequestFromJson(
    Map<String, dynamic> json) {
  return CreateCustomerRequest(
    description: json['description'] as String?,
    email: json['email'] as String?,
    metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    name: json['name'] as String?,
    paymentMethod: json['payment_method'] as String?,
    phoneNumber: json['phone_number'] as String?,
  );
}

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

CreateRefundRequest _$CreateRefundRequestFromJson(Map<String, dynamic> json) {
  return CreateRefundRequest(
    charge: json['charge'] as String?,
    amount: json['amount'] as int?,
    paymentIntent: json['payment_intent'] as String?,
    reason: json['reason'] as String?,
  );
}

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

CreateSessionRequest _$CreateSessionRequestFromJson(Map<String, dynamic> json) {
  return CreateSessionRequest(
    successUrl: json['success_url'] as String,
    cancelUrl: json['cancel_url'] as String,
    paymentMethodTypes: (json['payment_method_types'] as List<dynamic>)
        .map((e) => _$enumDecode(_$PaymentMethodTypeEnumMap, e))
        .toList(),
    customerEmail: json['customer_email'] as String?,
    customer: json['customer'] as String?,
    lineItems: (json['line_items'] as List<dynamic>?)
        ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CreateSessionRequestToJson(
    CreateSessionRequest instance) {
  final val = <String, dynamic>{
    'success_url': instance.successUrl,
    'cancel_url': instance.cancelUrl,
    'payment_method_types': instance.paymentMethodTypes
        .map((e) => _$PaymentMethodTypeEnumMap[e])
        .toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_email', instance.customerEmail);
  writeNotNull('customer', instance.customer);
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  return val;
}

const _$PaymentMethodTypeEnumMap = {
  PaymentMethodType.alipay: 'alipay',
  PaymentMethodType.card: 'card',
  PaymentMethodType.ideal: 'ideal',
  PaymentMethodType.fpx: 'fpx',
  PaymentMethodType.bacs_debit: 'bacs_debit',
  PaymentMethodType.bancontact: 'bancontact',
  PaymentMethodType.giropay: 'giropay',
  PaymentMethodType.p24: 'p24',
  PaymentMethodType.eps: 'eps',
  PaymentMethodType.sofort: 'sofort',
  PaymentMethodType.sepaDebit: 'sepaDebit',
  PaymentMethodType.grabpay: 'grabpay',
  PaymentMethodType.afterpay_clearpay: 'afterpay_clearpay',
};

LineItem _$LineItemFromJson(Map<String, dynamic> json) {
  return LineItem(
    amount: json['amount'] as int?,
    currency: json['currency'] as String?,
    images:
        (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    quantity: json['quantity'] as int?,
    name: json['name'] as String?,
    description: json['description'] as String?,
  );
}

Map<String, dynamic> _$LineItemToJson(LineItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('currency', instance.currency);
  writeNotNull('images', instance.images);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  return val;
}

Session _$SessionFromJson(Map<String, dynamic> json) {
  return Session(
    object: json['object'] as String,
    id: json['id'] as String,
    customer: json['customer'] as String?,
    paymentIntent: json['payment_intent'] as String,
    paymentMethodTypes: (json['payment_method_types'] as List<dynamic>)
        .map((e) => _$enumDecode(_$PaymentMethodTypeEnumMap, e))
        .toList(),
  );
}

Map<String, dynamic> _$SessionToJson(Session instance) {
  final val = <String, dynamic>{
    'object': instance.object,
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer', instance.customer);
  val['payment_intent'] = instance.paymentIntent;
  val['payment_method_types'] = instance.paymentMethodTypes
      .map((e) => _$PaymentMethodTypeEnumMap[e])
      .toList();
  return val;
}

SubList<T> _$SubListFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  return SubList<T>(
    object: _$enumDecode(_$_SubListObjectEnumMap, json['object']),
    data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    hasMore: json['has_more'] as bool,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$SubListToJson<T>(
  SubList<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'object': _$_SubListObjectEnumMap[instance.object],
      'data': instance.data.map(toJsonT).toList(),
      'has_more': instance.hasMore,
      'url': instance.url,
    };

const _$_SubListObjectEnumMap = {
  _SubListObject.list: 'list',
};
