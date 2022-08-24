import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/extensions/context_extensions.dart';
import '../../../core/manager/language/locale_keys.g.dart';
import '../../../product/constants/password_constants.dart';
import '../../../product/widgets/custom_elevated_button_widget.dart';
import '../../../product/widgets/default_container_widget.dart';
import '../../../product/widgets/drawer_widget.dart';
import '../../password_history/bloc/history_bloc.dart';
import '../bloc/password_bloc.dart';

part '../widgets/generate_password_widgets.dart';

class GeneratePasswordView extends StatelessWidget {
  const GeneratePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<PasswordBloc, PasswordState>(
      listener: (context, state) {
        if (state.isCopied) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: context.durationHigh,
              padding: context.paddingAllDefault,
              content: Text(
                LocaleKeys.password_copied.tr(),
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
                BlocBuilder<PasswordBloc, PasswordState>(
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
                  child: BlocBuilder<PasswordBloc, PasswordState>(
                    builder: (context, state) {
                      return CustomElevatedButton(
                          onPressed: () => context.read<PasswordBloc>().add(GeneratePassword()),
                          isDisabled: context.read<PasswordBloc>().isAllSettingsDisabled,
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
