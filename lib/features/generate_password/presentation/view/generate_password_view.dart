import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_generator/app/constants/password_constants.dart';
import 'package:password_generator/app/l10n/extensions/app_l10n_extensions.dart';
import 'package:password_generator/app/router/app_router.gr.dart';
import 'package:password_generator/app/theme/constants/theme_constants.dart';
import 'package:password_generator/app/widgets/container/custom_container.dart';
import 'package:password_generator/app/widgets/drawer/custom_drawer.dart';
import 'package:password_generator/core/extensions/context_extensions.dart';
import 'package:password_generator/core/utils/rate_app/rate_app_utils.dart';
import 'package:password_generator/core/utils/snackbar/snackbar_utils.dart';
import 'package:password_generator/features/generate_password/presentation/cubit/generate_password_cubit.dart';
import 'package:password_generator/features/password_history/cubit/password_history_cubit.dart';

part '../widgets/generate_password_widgets.dart';

@RoutePage()
class GeneratePasswordView extends StatelessWidget {
  const GeneratePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GeneratePasswordCubit, GeneratePasswordState>(
      listener: (context, state) async {
        if (state.isCopied) {
          SnackbarUtils.showSnackbar(
            context: context,
            message: context.l10n.password_copied,
          );
          context.read<PasswordHistoryCubit>().addToHistory(password: state.password);
        }
        // Show rate app dialog after generating 5 passwords
        if (state.generatedPasswordCount == 5) {
          await RateAppUtils.rateApp();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            context.l10n.generate,
          ),
          actions: [
            IconButton(
              onPressed: () => context.router.push(const LanguageRoute()),
              icon: const Icon(Icons.language),
            ),
          ],
        ),
        drawer: const CustomDrawer(),
        body: Padding(
          padding: context.paddingAllDefault,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.l10n.generated_password.toUpperCase(),
                      ),
                      const _GeneratedPassword(),
                      SizedBox(
                        height: context.defaultValue,
                      ),
                      BlocSelector<GeneratePasswordCubit, GeneratePasswordState, int>(
                        selector: (state) => state.password.length,
                        builder: (context, state) {
                          return Text('${context.l10n.length.toUpperCase()} $state');
                        },
                      ),
                      const _SliderWidget(),
                      SizedBox(
                        height: context.defaultValue,
                      ),
                      Text(
                        context.l10n.settings.toUpperCase(),
                      ),
                      const _UppercaseSwitch(),
                      const _LowercaseSwitch(),
                      const _NumbersSwitch(),
                      const _SpecialSwitch(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: context.defaultValue,
              ),
              Row(
                children: [
                  Expanded(
                    child: BlocSelector<GeneratePasswordCubit, GeneratePasswordState, bool>(
                      selector: (state) => state.passwordSettings.isAllOptionsDisabled,
                      builder: (context, state) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: context.colorScheme.primary,
                            foregroundColor: context.colorScheme.onPrimary,
                            padding: context.paddingAllDefault,
                            shape: RoundedRectangleBorder(
                              borderRadius: ThemeConstants.borderRadiusCircular,
                            ),
                          ),
                          onPressed: state ? null : () => context.read<GeneratePasswordCubit>().generatePassword(),
                          child: Text(
                            context.l10n.generate_password.toUpperCase(),
                            style: context.textTheme.bodyLarge?.copyWith(
                              color: context.colorScheme.onPrimary,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
