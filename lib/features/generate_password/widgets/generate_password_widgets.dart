part of '../view/generate_password_view.dart';

class _GeneratedPassword extends StatelessWidget {
  const _GeneratedPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder<PasswordBloc, PasswordState>(
          builder: (context, state) {
            return Flexible(
              child: Text(
                state.password,
                softWrap: false,
                overflow: TextOverflow.fade,
              ),
            );
          },
        ),
        IconButton(
          padding: EdgeInsets.zero,
          alignment: Alignment.centerRight,
          icon: const Icon(Icons.content_copy),
          onPressed: () => context.read<PasswordBloc>().add(PasswordCopied()),
        ),
      ],
    );
  }
}

class _SliderWidget extends StatelessWidget {
  const _SliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          PasswordConstants.minLength.toStringAsFixed(0),
        ),
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
                    context.read<PasswordBloc>().add(PasswordLengthChanged(value));
                  }
                },
              );
            },
          ),
        ),
        Text(
          PasswordConstants.maxLength.toStringAsFixed(0),
        ),
      ],
    );
  }
}

class _UppercaseSwitch extends StatelessWidget {
  const _UppercaseSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(LocaleKeys.lowercase.tr()),
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
  const _LowercaseSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(LocaleKeys.lowercase.tr()),
        BlocBuilder<PasswordBloc, PasswordState>(
          builder: (context, state) {
            return Switch(
              value: state.hasLowercase,
              onChanged: (value) => context.read<PasswordBloc>().add(LowercaseSwitchPressed()),
            );
          },
        ),
      ],
    );
  }
}

class _NumbersSwitch extends StatelessWidget {
  const _NumbersSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(LocaleKeys.numbers.tr()),
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
  const _SpecialSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(LocaleKeys.special.tr()),
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
