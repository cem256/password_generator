part of '../view/generate_password_view.dart';

class _GeneratedPassword extends StatelessWidget {
  const _GeneratedPassword();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder<GeneratePasswordCubit, GeneratePasswordState>(
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
          onPressed: () => context.read<GeneratePasswordCubit>().copyPressed(),
        ),
      ],
    );
  }
}

class _SliderWidget extends StatelessWidget {
  const _SliderWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          PasswordConstants.minLength.toStringAsFixed(0),
        ),
        Expanded(
          child: BlocBuilder<GeneratePasswordCubit, GeneratePasswordState>(
            builder: (context, state) {
              return Slider(
                value: state.passwordSettings.length,
                min: PasswordConstants.minLength,
                max: PasswordConstants.maxLength,
                divisions: (PasswordConstants.maxLength - PasswordConstants.minLength).toInt(),
                label: state.passwordSettings.length.toStringAsFixed(0),
                onChanged: (length) {
                  if (!context.read<GeneratePasswordCubit>().state.passwordSettings.isAllSettingsDisabled) {
                    context.read<GeneratePasswordCubit>().lengthChanged(length: length);
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
  const _UppercaseSwitch();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(LocaleKeys.uppercase.tr()),
        BlocBuilder<GeneratePasswordCubit, GeneratePasswordState>(
          builder: (context, state) {
            return Switch(
              value: state.passwordSettings.hasUppercase,
              onChanged: (hasUppercase) => context.read<GeneratePasswordCubit>().uppercaseChanged(
                    hasUppercase: hasUppercase,
                  ),
            );
          },
        ),
      ],
    );
  }
}

class _LowercaseSwitch extends StatelessWidget {
  const _LowercaseSwitch();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(LocaleKeys.lowercase.tr()),
        BlocBuilder<GeneratePasswordCubit, GeneratePasswordState>(
          builder: (context, state) {
            return Switch(
              value: state.passwordSettings.hasLowercase,
              onChanged: (hasLowercase) =>
                  context.read<GeneratePasswordCubit>().lowercaseChanged(hasLowercase: hasLowercase),
            );
          },
        ),
      ],
    );
  }
}

class _NumbersSwitch extends StatelessWidget {
  const _NumbersSwitch();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(LocaleKeys.numbers.tr()),
        BlocBuilder<GeneratePasswordCubit, GeneratePasswordState>(
          builder: (context, state) {
            return Switch(
              value: state.passwordSettings.hasNumbers,
              onChanged: (hasNumbers) => context.read<GeneratePasswordCubit>().numbersChanged(hasNumbers: hasNumbers),
            );
          },
        ),
      ],
    );
  }
}

class _SpecialSwitch extends StatelessWidget {
  const _SpecialSwitch();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(LocaleKeys.special.tr()),
        BlocBuilder<GeneratePasswordCubit, GeneratePasswordState>(
          builder: (context, state) {
            return Switch(
              value: state.passwordSettings.hasSpecial,
              onChanged: (hasSpecial) => context.read<GeneratePasswordCubit>().specialChanged(hasSpecial: hasSpecial),
            );
          },
        ),
      ],
    );
  }
}
