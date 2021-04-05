# Stripe Dart

This implementation is based on the official Stripe Java and NodeJS API wrappers
and written as a proper native dart library.

**This library is meant to be used on the server.**

This library does not include all resources, messages or fields, but only the
most important ones and the ones we need. We are open and encourage merge
requests to increase coverage.

## Development

All messages are written with `json_serializable` so make sure to generate the
files with `dart run build_runner build` when you make changes and want to test
them.