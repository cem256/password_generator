part of 'l10n_cubit.dart';

@freezed
class I10nState with _$I10nState {
  factory I10nState({required Locale locale}) = _I10nState;

  const I10nState._();

  factory I10nState.initial() => I10nState(locale: AppL10n.fallbackLocale);

  factory I10nState.fromMap(Map<String, dynamic> map) {
    return I10nState(locale: AppL10n.supportedLocales.firstWhere((e) => e.languageCode == map['locale']));
  }

  Map<String, dynamic> toMap() {
    return {'locale': locale.languageCode};
  }
}
