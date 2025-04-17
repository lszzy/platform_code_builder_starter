class PlatformDetector {
  const PlatformDetector();
}

/// 暂不支持renameTo和code同时生效，优先级：code>renameTo
class PlatformSpec {
  final int platformType;
  final String? renameTo;
  final bool not;
  final String? code;

  const PlatformSpec({
    required this.platformType,
    this.not = false,
    this.renameTo,
    this.code,
  });
}
