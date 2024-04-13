import 'dart:io';

abstract final class StringConstants {
  StringConstants._();

  static const String appName = 'Password Generator';
  static String get gptDetector => Platform.isAndroid ? 'GPT Detector' : 'AI Detector';
  static const String githubUrl = 'https://github.com/cem256/password_generator';
  static const String privacyPolicyUrl = 'https://cem256.github.io/password_generator/privacy-policy.html';
  static const String googlePlayUrl = 'https://play.google.com/store/apps/details?id=com.cem256.passwordgenerator';
  static const String appStoreUrl = 'https://apps.apple.com/app/fabi-password-generator/id6483365070';
  static const String gptDetectorPlayStoreUrl = 'https://play.google.com/store/apps/details?id=com.cem256.gptdetector';
  static const String gptDetectorAppStoreUrl = 'https://apps.apple.com/app/fabi-ai-detector/id6466612799';
}
