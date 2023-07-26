import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_generator/app/constants/asset_constants.dart';
import 'package:password_generator/app/constants/string_constants.dart';
import 'package:password_generator/app/l10n/app_l10n.g.dart';
import 'package:password_generator/app/theme/cubit/theme_cubit.dart';
import 'package:password_generator/core/extensions/context_extensions.dart';
import 'package:password_generator/core/extensions/widget_extensions.dart';
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
                      Text(
                        StringConstants.appName,
                        style: context.textTheme.titleMedium,
                      ),
                    ].spaceBetween(height: context.defaultValue),
                  ),
                ),
                SizedBox(
                  height: context.defaultValue,
                ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: Text(LocaleKeys.version.tr()),
                ),
                ListTile(
                  leading: const Icon(Icons.privacy_tip),
                  title: Text(LocaleKeys.privacy.tr()),
                  onTap: () async => UrlLauncherUtils.launchUrlFromString(url: StringConstants.privacyPolicyUrl),
                ),
                ListTile(
                  leading: const Icon(Icons.star),
                  title: Text(LocaleKeys.rate_app.tr()),
                  onTap: () async => RateAppUtils.rateApp(),
                ),
                ListTile(
                  leading: const Icon(Icons.share),
                  title: Text(LocaleKeys.share_app.tr()),
                  onTap: () async => ShareAppUtils.shareApp(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
