import 'package:envied/envied.dart';

part 'env.g.dart';

/// Reads the .env file from env/.env and generates the Env class
@Envied(path: 'env/.env', obfuscate: true)
abstract final class Env {
  Env._();

  @EnviedField(varName: 'SECRET_KEY')
  static final String secretKey = _Env.secretKey;
}
