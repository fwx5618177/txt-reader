#!/bin/bash

# 检查当前的 Flutter 配置
echo "Checking current Flutter config..."
current_config=$(flutter config --list)

# 检查并启用 Android 支持
if [[ "$current_config" != *"enable-android: true"* ]]; then
  echo "Enabling Android support..."
  flutter config --enable-android
else
  echo "Android support is already enabled."
fi

# 检查并启用 iOS 支持
if [[ "$current_config" != *"enable-ios: true"* ]]; then
  echo "Enabling iOS support..."
  flutter config --enable-ios
else
  echo "iOS support is already enabled."
fi

flutter config --enable-web
flutter config --enable-macos-desktop
flutter config --enable-windows-desktop
flutter config --enable-linux-desktop

# 输出最终的配置状态
echo "Final Flutter config:"
flutter config --list