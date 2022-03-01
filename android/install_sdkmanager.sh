#!/bin/bash
SDK_ZIP=commandlinetools-linux-8092744_latest.zip
sudo apt install android-sdk
export ANDROID_SDK_ROOT=/usr/lib/android-sdk/
wget https://dl.google.com/android/repository/$SDK_ZIP
unzip "$SDK_ZIP" -d cmdline-tools
sudo mv cmdline-tools $ANDROID_SDK_ROOT/
rm "$SDK_ZIP"

export PATH=$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$PATH
