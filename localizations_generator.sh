#!/bin/sh

fvm flutter pub run easy_localization:generate --source-dir ./assets/translations
fvm flutter pub run easy_localization:generate -S assets/translations -f keys -o locale_keys.g.dart