class PlatformBuilder {
  final bool import;
  const PlatformBuilder({
    this.import = true,
  });
}

class Available {
  final int platform;
  final String? rename;
  final String? code;

  const Available({
    required this.platform,
    this.rename,
    this.code,
  });
}

class Unavailable {
  final int platform;
  final String? rename;
  final String? code;

  const Unavailable({
    required this.platform,
    this.rename,
    this.code,
  });
}
