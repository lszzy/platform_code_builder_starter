@PlatformAvailable()
import 'package:platform_code_builder/platform_code_builder.dart';

@Available(platform: PlatformType.xiaomi, rename: 'current')
const String currentIsXiaomi = 'xiaomi';

@Available(platform: PlatformType.huawei, rename: 'current')
const String currentIsHW = 'huawei';

@Available(platform: PlatformType.oppo, rename: 'current')
const String currentIsOppo = 'oppo';

@Available(platform: PlatformType.vivo, rename: 'current')
const String currentIsVivo = 'vivo';

@Available(platform: PlatformType.other_android, rename: 'current')
const String currentIsOA = 'other_android';

@Available(platform: PlatformType.iphone, rename: 'current')
const String currentIsIP = 'iphone';

@Available(platform: PlatformType.linux, rename: 'current')
const String currentIsLinux = 'linux';

@Available(platform: PlatformType.mac, rename: 'current')
const String currentIsMac = 'mac';

@Available(platform: PlatformType.windows, rename: 'current')
const String currentIsWin = 'windows';

@Available(platform: PlatformType.web, rename: 'current')
const String currentIsWeb = 'web';
