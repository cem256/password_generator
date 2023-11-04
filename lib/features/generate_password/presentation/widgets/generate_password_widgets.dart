part of '../view/generate_password_view.dart';

class _GeneratedPassword extends StatelessWidget {
  const _GeneratedPassword();

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocSelector<GeneratePasswordCubit, GeneratePasswordState, String>(
            selector: (state) => state.password,
            builder: (context, state) {
              return Flexible(
                child: Text(
                  state,
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
            onPressed: () => context.read<GeneratePasswordCubit>().copyPassword(),
          ),
        ],
      ),
    );
  }
}

class _SliderWidget extends StatelessWidget {
  const _SliderWidget();

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Row(
        children: [
          Text(PasswordConstants.minLength.toStringAsFixed(0)),
          Expanded(
            child: BlocSelector<GeneratePasswordCubit, GeneratePasswordState, double>(
              selector: (state) => state.passwordSettings.length,
              builder: (context, state) {
                return Slider(
                  value: state,
                  min: PasswordConstants.minLength,
                  max: PasswordConstants.maxLength,
                  divisions: (PasswordConstants.maxLength - PasswordConstants.minLength).toInt(),
                  label: state.toStringAsFixed(0),
                  onChanged: (length) {
                    if (!context.read<GeneratePasswordCubit>().state.passwordSettings.isAllOptionsDisabled) {
                      context.read<GeneratePasswordCubit>().lengthChanged(length: length);
                    }
                  },
                );
              },
            ),
          ),
          Text(PasswordConstants.maxLength.toStringAsFixed(0)),
        ],
      ),
    );
  }
}

class _UppercaseSwitch extends StatelessWidget {
  const _UppercaseSwitch();

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(context.l10n.uppercase),
          BlocSelector<GeneratePasswordCubit, GeneratePasswordState, bool>(
            selector: (state) => state.passwordSettings.hasUppercase,
            builder: (context, state) {
              return Switch(
                value: state,
                onChanged: (hasUppercase) => context.read<GeneratePasswordCubit>().uppercaseChanged(
                      hasUppercase: hasUppercase,
                    ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _LowercaseSwitch extends StatelessWidget {
  const _LowercaseSwitch();

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(context.l10n.lowercase),
          BlocSelector<GeneratePasswordCubit, GeneratePasswordState, bool>(
            selector: (state) => state.passwordSettings.hasLowercase,
            builder: (context, state) {
              return Switch(
                value: state,
                onChanged: (hasLowercase) =>
                    context.read<GeneratePasswordCubit>().lowercaseChanged(hasLowercase: hasLowercase),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _NumbersSwitch extends StatelessWidget {
  const _NumbersSwitch();

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(context.l10n.numbers),
          BlocSelector<GeneratePasswordCubit, GeneratePasswordState, bool>(
            selector: (state) => state.passwordSettings.hasNumbers,
            builder: (context, state) {
              return Switch(
                value: state,
                onChanged: (hasNumbers) => context.read<GeneratePasswordCubit>().numbersChanged(hasNumbers: hasNumbers),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _SpecialSwitch extends StatelessWidget {
  const _SpecialSwitch();

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(context.l10n.special),
          BlocSelector<GeneratePasswordCubit, GeneratePasswordState, bool>(
            selector: (state) => state.passwordSettings.hasSpecial,
            builder: (context, state) {
              return Switch(
                value: state,
                onChanged: (hasSpecial) => context.read<GeneratePasswordCubit>().specialChanged(hasSpecial: hasSpecial),
              );
            },
          ),
        ],
      ),
    );
  }
}
