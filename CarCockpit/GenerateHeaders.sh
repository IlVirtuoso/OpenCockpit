#!/usr/bin/env bash
# -*- coding: #!/usr/bin/env bashutf-8 -*-

UiDir="./ui"
includeDir="./include"

for entry in "$UiDir"/*
do
uic "$UiDir/$entry" -o "$includeDir/$entry.h"
echo "$entry"
echo "$UiDir/$entry"
echo "$includeDir/$entry.h"
done