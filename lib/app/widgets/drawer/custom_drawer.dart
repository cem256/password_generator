import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_generator/app/constants/asset_constants.dart';
import 'package:password_generator/app/constants/string_constants.dart';
import 'package:password_generator/app/l10n/extensions/app_l10n_extensions.dart';
import 'package:password_generator/app/theme/cubit/theme_cubit.dart';
import 'package:password_generator/core/extensions/context_extensions.dart';
import 'package:password_generator/core/utils/package_info/package_info_utils.dart';
import 'package:password_generator/core/utils/rate_app/rate_app_utils.dart';
import 'package:password_generator/core/utils/share_app/share_app_utils.dart';
import 'package:password_generator/core/utils/url_launcher/url_launcher_utils.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: context.paddingAllDefault,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          SizedBox(
                            height: context.veryHighValue2x,
                            width: double.infinity,
                            child: Image.asset(AssetConstants.appIcon),
                          ),
                          IconButton(
                            icon: Icon(context.brightness == Brightness.dark ? Icons.light_mode : Icons.dark_mode),
                            onPressed: () => context.read<ThemeCubit>().changeTheme(brightness: context.brightness),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.defaultValue,
                      ),
                      Text(
                        StringConstants.appName,
                        style: context.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.defaultValue,
                ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: Text(context.l10n.version(PackageInfoUtils.getAppVersion())),
                ),
                ListTile(
                  leading: const Icon(Icons.privacy_tip),
                  title: Text(context.l10n.privacy),
                  onTap: () async => UrlLauncherUtils.launchUrlFromString(url: StringConstants.privacyPolicyUrl),
                ),
                ListTile(
                  leading: const Icon(Icons.star),
                  title: Text(context.l10n.rate_app),
                  onTap: () async => RateAppUtils.rateApp(),
                ),
                ListTile(
                  leading: const Icon(Icons.share),
                  title: Text(context.l10n.share_app),
                  onTap: () async => ShareAppUtils.shareApp(),
                ),
                ListTile(
                  leading: const Icon(Icons.code),
                  title: Text(context.l10n.contribute),
                  onTap: () async => UrlLauncherUtils.launchUrlFromString(url: StringConstants.githubUrl),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
