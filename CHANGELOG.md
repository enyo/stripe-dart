## 4.11.0 (2023-06-19)

- Upgrade `dio` version

## 4.10.0 (2023-03-29)

- Add `PaymentIntent.automaticPaymentMethods` property

## 4.9.0 (2023-03-10)

- Add `PaymentIntentEvent` class
- Add `Event.fromJson()` static factory method
- Add support for `PaymentIntent.created` and `PaymentIntent.canceledAt`
- Add `PaymentIntent.latestCharge`
- Add `PaymentIntent.amountReceived`
- Introduce `Message` parent class
- Introduce `Resource` parent class
- Remove outdated `PaymentIntent.charges` property
- Update `BalanceTransaction` to add `fee` and `feeDetails` properties

## 4.8.0 (2022-12-21)

- Add support for basic creation of payment Intents

## 4.7.0 (2022-03-04)

- Add `priceData` to `lineItems` of `CreateCheckoutSessionRequest`.
- Add `metadata` to `Subscription` (and the
  `CreateCheckoutSessionRequest.subscriptionData`)

## 4.6.0 (2022-02-25)

- Add `subscriptionData` to `CreateCheckoutSessionRequest`.

## 4.5.0 (2021-09-11)

- Add additional resources, notably in relation to `CheckoutSession`.

## 4.4.1 (2021-07-22)

- Fix `livemode` attribute of PortalSession.

## 4.4.0 (2021-03-30)

- Add event message.
- Add subscription `currentPeriodStart` and `currentPeriodEnd`.

## 4.3.0 (2021-03-30)

- Rename session to checkoutSession
- Add portalSession

## 4.2.0 (2021-03-30)

- Add prices and products resources

## 4.1.0 (2021-03-29)

- Add subscription resource and a way to list them.
- Fix minor problems with other resources.

## 4.0.1 (2021-03-29)

- Properly expose the new customer resource.

## 4.0.0 (2021-03-27)

- Upgrade to Stripe API `2020-08-27`. Decided to do this in a separate step so
  people are not force to upgrade API if they want null safety.
- Add the customer resource.

### Breaking Changes

- Change the way sessions are created (now an object is passed instead of
  individual arguments).
- Change the way refunds are created (now an object is passed instead of
  individual arguments).

## 3.0.0 (2021-03-27)

- Null safety

## 2.0.4 (2020-05-04)

- Upgrade `json_serializable` & `json_annotation` dependencies to 3.x.x

## 2.0.2 (2019-09-18)

Features:

- Add call to retrieve a checkout session session
- Add call to cancel a payment intent

## 2.0.2 (2019-09-18)

Fixes:

- Make `v0` part of the webhook signature optional

## 2.0.1 (2019-09-10)

Fixes:

- Properly import IOClient

## 2.0.0 (2019-08-12)

Features:

- rewrite for server side one-time payments with checkout

## 1.2.2 (2016-10-20)

Features:

- upgrade dependencies

Bug fixes:

- change card type to card brand

## 1.2.1 (2016-08-08)

Features:

- add CHANGELOG.md (closes [#32](https://github.com/exitlive/stripe-dart/issues/32))
- add default source to customer ([#33](https://github.com/exitlive/stripe-dart/pull/33), [@rbellens](https://github.com/rbellens))

Bug fixes:

- fix card creation with token ([#33](https://github.com/exitlive/stripe-dart/pull/33), [@rbellens](https://github.com/rbellens))
