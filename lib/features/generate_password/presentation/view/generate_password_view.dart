import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_generator/app/constants/password_constants.dart';
import 'package:password_generator/app/l10n/l10n.g.dart';
import 'package:password_generator/app/widgets/default_container_widget.dart';
import 'package:password_generator/app/widgets/drawer_widget.dart';
import 'package:password_generator/core/extensions/context_extensions.dart';
import 'package:password_generator/core/extensions/widget_extensions.dart';
import 'package:password_generator/core/utils/snackbar/snackbar_utils.dart';
import 'package:password_generator/features/generate_password/presentation/cubit/generate_password_cubit.dart';
import 'package:password_generator/features/password_history/cubit/password_history_cubit.dart';

part '../widgets/generate_password_widgets.dart';

class GeneratePasswordView extends StatelessWidget {
  const GeneratePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GeneratePasswordCubit, GeneratePasswordState>(
      listener: (context, state) {
        if (state.isCopied) {
          SnackbarUtils.showSnackbar(
            context: context,
            message: LocaleKeys.password_copied.tr(),
          );
          context.read<PasswordHistoryCubit>().addToHistory(password: state.password);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            LocaleKeys.generate_password.tr().toUpperCase(),
          ),
        ),
        drawer: const DrawerWidget(),
        body: SafeArea(
          child: Padding(
            padding: context.paddingAllDefault,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LocaleKeys.generated_password.tr().toUpperCase(),
                ),
                const DefaultContainer(
                  child: _GeneratedPassword(),
                ),
                SizedBox(
                  height: context.lowValue,
                ),
                BlocSelector<GeneratePasswordCubit, GeneratePasswordState, int>(
                  selector: (state) => state.password.length,
                  builder: (context, state) {
                    return Text(
                      '${LocaleKeys.length.tr().toUpperCase()} $state',
                    );
                  },
                ),
                const DefaultContainer(
                  child: _SliderWidget(),
                ),
                SizedBox(
                  height: context.lowValue,
                ),
                Text(
                  LocaleKeys.settings.tr().toUpperCase(),
                ),
                const DefaultContainer(
                  child: _UppercaseSwitch(),
                ),
                const DefaultContainer(
                  child: _LowercaseSwitch(),
                ),
                const DefaultContainer(
                  child: _NumbersSwitch(),
                ),
                const DefaultContainer(
                  child: _SpecialSwitch(),
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: context.highValue,
                  child: BlocSelector<GeneratePasswordCubit, GeneratePasswordState, bool>(
                    selector: (state) => state.passwordSettings.isAllOptionsDisabled,
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: state ? null : () => context.read<GeneratePasswordCubit>().generatePassword(),
                        child: Text(LocaleKeys.generate_password.tr().toUpperCase()),
                      );
                    },
                  ),
                ),
              ].spaceBetween(height: context.lowValue),
            ),
          ),
        ),
      ),
    );
  }
}
