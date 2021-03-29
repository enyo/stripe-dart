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
