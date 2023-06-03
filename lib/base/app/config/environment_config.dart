
enum EnvironmentType { dev, staging, prod }

class EnvironmentConfig {
  const EnvironmentConfig._({
    required this.baseApiUrl,
    required this.webSocketUrl,
    this.environment = EnvironmentType.dev,
  });

  final EnvironmentType environment;
  final String baseApiUrl;
  final String webSocketUrl;

  static const EnvironmentConfig dev = EnvironmentConfig._(
    environment: EnvironmentType.dev,
    baseApiUrl: 'https://',
    webSocketUrl: 'wss://',
  );
  static const EnvironmentConfig staging = EnvironmentConfig._(
    environment: EnvironmentType.staging,
    baseApiUrl: 'https://',
    webSocketUrl: 'wss://',
  );
  static const EnvironmentConfig prod = EnvironmentConfig._(
    environment: EnvironmentType.prod,
    baseApiUrl: 'https://',
    webSocketUrl: 'wss://',
  );
}
