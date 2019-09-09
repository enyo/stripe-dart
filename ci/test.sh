#!/usr/bin/env bash
export PATH="$PATH":"~/.pub-cache/bin"
pub get
pub global activate grinder
grind test
