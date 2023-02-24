import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:url_launcher/url_launcher_string.dart';

import '../../core/extensions/context_extensions.dart';

import '../constants/asset_constants.dart';
import '../constants/string_constants.dart';
import '../l10n/locale_keys.g.dart';
import '../theme/cubit/theme_cubit.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

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
                    Stack(alignment: Alignment.topRight, children: [
                      SizedBox(
                        height: context.veryHighValue2x,
                        width: double.infinity,
                        child: Image.asset(AssetConstants.appIcon),
                      ),
                      BlocBuilder<ThemeCubit, ThemeState>(
                        builder: (context, state) {
                          return IconButton(
                            onPressed: () => context.read<ThemeCubit>().themeChanged(),
                            icon: Icon(state.isDark ? Icons.brightness_high : Icons.dark_mode),
                          );
                        },
                      ),
                    ]),
                    SizedBox(
                      height: context.mediumValue,
                    ),
                    Text(
                      StringConstants.appName,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
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
                onTap: () async {
                  await launchUrlString(mode: LaunchMode.platformDefault, StringConstants.privacyPolicyUrl);
                },
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}