import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_generator/app/constants/asset_constants.dart';
import 'package:password_generator/app/constants/string_constants.dart';
import 'package:password_generator/app/l10n/l10n.g.dart';
import 'package:password_generator/app/theme/cubit/theme_cubit.dart';
import 'package:password_generator/core/extensions/context_extensions.dart';
import 'package:password_generator/core/extensions/widget_extensions.dart';
import 'package:password_generator/core/utils/url_launcher/url_launcher_utils.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
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
                        BlocBuilder<ThemeCubit, ThemeState>(
                          builder: (context, state) {
                            return IconButton(
                              icon: Icon(state.isDark ? Icons.brightness_high : Icons.dark_mode),
                              onPressed: () => context.read<ThemeCubit>().changeTheme(),
                            );
                          },
                        ),
                      ],
                    ),
                    Text(
                      StringConstants.appName,
                      style: context.textTheme.titleMedium,
                    ),
                  ].spaceBetween(height: context.mediumValue),
                ),
              ),
              SizedBox(
                height: context.mediumValue,
              ),
              const Divider(),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.info),
                title: Text(LocaleKeys.version.tr()),
              ),
              const Divider(),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.privacy_tip),
                title: Text(LocaleKeys.privacy.tr()),
                onTap: () async => UrlLauncherUtils.launchUrlFromString(url: StringConstants.privacyPolicyUrl),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
