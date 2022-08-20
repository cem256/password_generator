import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/manager/language/locale_keys.g.dart';
import '../../../../product/constants/password_constants.dart';
import '../../../../product/widgets/default_container_widget.dart';
import '../../../../product/widgets/drawer_widget.dart';
import '../bloc/password_bloc.dart';

class GeneratePasswordView extends StatelessWidget {
  const GeneratePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.generate_password.tr(),
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
                LocaleKeys.generated_password.tr(),
              ),
              SizedBox(
                height: context.lowValue,
              ),
              const _CopyGeneratedPassword(),
              SizedBox(
                height: context.mediumValue,
              ),
              BlocBuilder<PasswordBloc, PasswordState>(
                builder: (context, state) {
                  return Text("Length ${state.password.length}");
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
                LocaleKeys.settings.tr(),
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
                child: const _GeneratePasswordButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CopyGeneratedPassword extends StatelessWidget {
  const _CopyGeneratedPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder<PasswordBloc, PasswordState>(
          builder: (context, state) {
            return Text(state.password);
          },
        ),
        IconButton(
          padding: EdgeInsets.zero,
          alignment: Alignment.centerRight,
          icon: const Icon(Icons.content_copy_outlined),
          onPressed: () {
            context.read<PasswordBloc>().add(PasswordCopied());
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: context.durationHigh,
                padding: context.paddingAllDefault,
                content: Text(LocaleKeys.password_copied.tr()),
              ),
            );
          },
        ),
      ],
    );
  }
}

class _SliderWidget extends StatelessWidget {
  const _SliderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(PasswordConstants.minLength.toStringAsFixed(0)),
        Expanded(
          child: BlocBuilder<PasswordBloc, PasswordState>(
            builder: (context, state) {
              return Slider(
                  value: state.length,
                  min: PasswordConstants.minLength,
                  max: PasswordConstants.maxLength,
                  divisions: (PasswordConstants.maxLength - PasswordConstants.minLength).toInt(),
                  label: state.length.toStringAsFixed(0),
                  onChanged: (value) {
                    if (!context.read<PasswordBloc>().isAllSettingsDisabled) {
                      context.read<PasswordBloc>().add(LengthChanged(value));
                    }
                  });
            },
          ),
        ),
        Text(PasswordConstants.maxLength.toStringAsFixed(0)),
      ],
    );
  }
}

class _UppercaseSwitch extends StatelessWidget {
  const _UppercaseSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          LocaleKeys.uppercase.tr(),
        ),
        BlocBuilder<PasswordBloc, PasswordState>(
          builder: (context, state) {
            return Switch(
              value: state.hasUppercase,
              onChanged: (value) => context.read<PasswordBloc>().add(UppercaseSwitchPressed()),
            );
          },
        ),
      ],
    );
  }
}

class _LowercaseSwitch extends StatelessWidget {
  const _LowercaseSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          LocaleKeys.lowercase.tr(),
        ),
        BlocBuilder<PasswordBloc, PasswordState>(
          builder: (context, state) {
            return Switch(
              value: state.hasLowercase,
              onChanged: (value) => context.read<PasswordBloc>().add(LowercaseSwitchPressed()),
            );
          },
        )
      ],
    );
  }
}

class _NumbersSwitch extends StatelessWidget {
  const _NumbersSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          LocaleKeys.numbers.tr(),
        ),
        BlocBuilder<PasswordBloc, PasswordState>(
          builder: (context, state) {
            return Switch(
              value: state.hasNumbers,
              onChanged: (value) => context.read<PasswordBloc>().add(NumbersSwitchPressed()),
            );
          },
        ),
      ],
    );
  }
}

class _SpecialSwitch extends StatelessWidget {
  const _SpecialSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          LocaleKeys.special.tr(),
        ),
        BlocBuilder<PasswordBloc, PasswordState>(
          builder: (context, state) {
            return Switch(
              value: state.hasSpecial,
              onChanged: (value) => context.read<PasswordBloc>().add(SpecialSwitchPressed()),
            );
          },
        ),
      ],
    );
  }
}

class _GeneratePasswordButton extends StatelessWidget {
  const _GeneratePasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordBloc, PasswordState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: context.read<PasswordBloc>().isAllSettingsDisabled
              ? null
              : () => context.read<PasswordBloc>().add(GeneratePassword()),
          child: Text(LocaleKeys.generate_password.tr()),
        );
      },
    );
  }
}
