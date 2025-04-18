@PlatformAvailable()
import 'package:flutter/material.dart';
import 'package:platform_code_builder/platform_code_builder.dart';

@Available(platform: PlatformType.desktop)
class Test01 {
  @Available(platform: PlatformType.mac)
  getContainer() {
    return Container();
  }

  @Available(platform: PlatformType.linux, rename: "getContainer")
  getContainerTest() {
    return Container();
  }
}

@Available(platform: PlatformType.android, rename: "Test01")
class Test02 {
  @Available(platform: PlatformType.vivo)
  getContainer() {
    return Container();
  }

  @Available(platform: PlatformType.xiaomi, rename: "getContainer")
  getContainerTest() {
    return Container();
  }
}
