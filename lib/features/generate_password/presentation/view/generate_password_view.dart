import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/l10n/l10n.g.dart';
import '../../../../core/extensions/context_extensions.dart';

import '../../../../app/constants/password_constants.dart';
import '../../../../app/widgets/custom_elevated_button_widget.dart';
import '../../../../app/widgets/default_container_widget.dart';
import '../../../../app/widgets/drawer_widget.dart';
import '../../../password_history/bloc/history_bloc.dart';
import '../cubit/generate_password_cubit.dart';

part '../widgets/generate_password_widgets.dart';

class GeneratePasswordView extends StatelessWidget {
  const GeneratePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<GeneratePasswordCubit, GeneratePasswordState>(
      listener: (context, state) {
        if (state.isCopied) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: context.durationDefault,
              margin: context.paddingAllVeryHigh,
              content: Text(
                LocaleKeys.password_copied.tr(),
                textAlign: TextAlign.center,
              ),
            ),
          );
          context.read<HistoryBloc>().add(AddToHistoryPressed(state.password));
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
          child: Container(
            padding: context.paddingAllDefault,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LocaleKeys.generated_password.tr().toUpperCase(),
                ),
                SizedBox(
                  height: context.lowValue,
                ),
                const DefaultContainer(
                  child: _GeneratedPassword(),
                ),
                SizedBox(
                  height: context.mediumValue,
                ),
                BlocBuilder<GeneratePasswordCubit, GeneratePasswordState>(
                  builder: (context, state) {
                    return Text(
                      "${LocaleKeys.length.tr().toUpperCase()} ${state.password.length}",
                    );
                  },
                ),
                SizedBox(
                  height: context.lowValue,
                ),
                const DefaultContainer(
                  child: _SliderWidget(),
                ),
                SizedBox(
                  height: context.mediumValue,
                ),
                Text(
                  LocaleKeys.settings.tr().toUpperCase(),
                ),
                SizedBox(
                  height: context.lowValue,
                ),
                const DefaultContainer(
                  child: _UppercaseSwitch(),
                ),
                SizedBox(
                  height: context.lowValue,
                ),
                const DefaultContainer(
                  child: _LowercaseSwitch(),
                ),
                SizedBox(
                  height: context.lowValue,
                ),
                const DefaultContainer(
                  child: _NumbersSwitch(),
                ),
                SizedBox(
                  height: context.lowValue,
                ),
                const DefaultContainer(
                  child: _SpecialSwitch(),
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: context.highValue,
                  child: BlocBuilder<GeneratePasswordCubit, GeneratePasswordState>(
                    builder: (context, state) {
                      return CustomElevatedButton(
                          onPressed: () => context.read<GeneratePasswordCubit>().generatePasswordPressed(),
                          isDisabled: state.passwordSettings.isAllSettingsDisabled,
                          child: Text(LocaleKeys.generate_password.tr().toUpperCase()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
