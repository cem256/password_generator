import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_generator/app/l10n/app_l10n.dart';
import 'package:password_generator/app/l10n/cubit/l10n_cubit.dart';
import 'package:password_generator/app/l10n/extensions/app_l10n_extensions.dart';
import 'package:password_generator/core/extensions/context_extensions.dart';

class LanguageDialog extends StatelessWidget {
  const LanguageDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: context.paddingAllDefault,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.language,
              style: context.textTheme.titleMedium,
            ),
            SizedBox(
              height: context.defaultValue,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: AppL10n.supportedLocales.length,
              itemBuilder: (context, index) {
                return BlocBuilder<L10nCubit, L10nState>(
                  builder: (context, state) {
                    return RadioListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(AppL10n.supportedLocales[index].humanLanguage(context)),
                      value: AppL10n.supportedLocales[index],
                      groupValue: state.locale,
                      onChanged: (_) => context.read<L10nCubit>().changeLocale(locale: AppL10n.supportedLocales[index]),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
