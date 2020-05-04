#!/usr/bin/env bash
export PATH="$PATH":"$HOME/.pub-cache/bin"
pub get
pub global activate grinder
grind test
