import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_generator/app/l10n/app_l10n.dart';
import 'package:password_generator/app/l10n/cubit/l10n_cubit.dart';
import 'package:password_generator/app/l10n/extensions/app_l10n_extensions.dart';
import 'package:password_generator/core/extensions/context_extensions.dart';
import 'package:recase/recase.dart';

@RoutePage()
class LanguageView extends StatelessWidget {
  const LanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.language),
      ),
      body: ListView.builder(
        padding: context.paddingAllDefault,
        itemCount: AppL10n.supportedLocales.length,
        itemBuilder: (context, index) {
          return BlocBuilder<L10nCubit, L10nState>(
            builder: (context, state) {
              return RadioListTile(
                contentPadding: EdgeInsets.zero,
                controlAffinity: ListTileControlAffinity.trailing,
                title: Text(AppL10n.supportedLocales[index].humanLanguage(context).titleCase),
                value: AppL10n.supportedLocales[index],
                groupValue: state.locale,
                onChanged: (_) => context.read<L10nCubit>().changeLocale(locale: AppL10n.supportedLocales[index]),
              );
            },
          );
        },
      ),
    );
  }
}
