import 'package:url_launcher/url_launcher_string.dart';

abstract final class UrlLauncherUtils {
  UrlLauncherUtils._();

  static Future<bool> launchUrlFromString({required String url}) async {
    final isLaunched = await launchUrlString(url);
    return isLaunched;
  }
}
