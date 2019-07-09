#!/bin/bash

# Copyright 2015 The Chromium Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.
# git clone https://github.com/flutter/flutter.git -b stable

set -e

export FLUTTER_ROOT=$HOME/flutter

if [ ! -f "$FLUTTER_ROOT" ]; then
  echo Cloning Flutter repo...
  git clone -b codelab https://github.com/flutter/flutter.git -b stable $FLUTTER_ROOT
else
  echo Updating Flutter repo...
  (cd $FLUTTER_ROOT; git pull)
fi

echo Running Flutter setup...
rm -f $HOME/.flutter
(cd $FLUTTER_ROOT; ./bin/flutter setup)
