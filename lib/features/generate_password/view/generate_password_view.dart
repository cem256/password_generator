import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../../core/extensions/context_extensions.dart';
import '../../../core/manager/language/locale_keys.g.dart';
import '../../../product/constants/view_constants.dart';
import '../../../product/widgets/default_container_widget.dart';
import '../../../product/widgets/drawer_widget.dart';
import '../view_model/generate_password_view_model.dart';

class GeneratePasswordView extends StatefulWidget {
  const GeneratePasswordView({Key? key}) : super(key: key);

  @override
  State<GeneratePasswordView> createState() => _GeneratePasswordViewState();
}

class _GeneratePasswordViewState extends State<GeneratePasswordView> {
  late final GeneratePasswordViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = GeneratePasswordViewModel();
    _viewModel.generatePassword();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.generate_password.tr()),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: ViewConstants.radius,
          ),
        ),
      ),
      drawer: const DrawerWidget(),
      body: Container(
        padding: context.paddingAllDefault,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(LocaleKeys.generated_password.tr()),
            SizedBox(
              height: context.lowValue,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Observer(
                  builder: (_) {
                    return Text(
                      _viewModel.password,
                    );
                  },
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerRight,
                  icon: const Icon(Icons.content_copy_outlined),
                  onPressed: () async {
                    await Clipboard.setData(ClipboardData(text: _viewModel.password));

                    if (!mounted) return;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        padding: context.paddingAllDefault,
                        content: Text(
                          LocaleKeys.password_copied.tr(),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: context.mediumValue,
            ),
            Observer(
              builder: (_) {
                return Text("${LocaleKeys.length.tr()} ${_viewModel.length.toStringAsFixed(0)}");
              },
            ),
            SizedBox(
              height: context.lowValue,
            ),
            DefaultContainer(
              child: Row(
                children: [
                  Text(
                    _viewModel.minLength.toStringAsFixed(0),
                  ),
                  Expanded(
                    child: Observer(
                      builder: (_) {
                        return Slider(
                          value: _viewModel.length,
                          min: _viewModel.minLength,
                          max: _viewModel.maxLength,
                          divisions: _viewModel.maxLength.toInt() - _viewModel.minLength.toInt(),
                          label: _viewModel.length.toStringAsFixed(0),
                          onChanged: (value) {
                            if (!_viewModel.isAllSettingsDisabled) {
                              _viewModel.length = value;
                              _viewModel.generatePassword();
                            }
                          },
                        );
                      },
                    ),
                  ),
                  Text(
                    _viewModel.maxLength.toStringAsFixed(0),
                  ),
                ],
              ),
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
            DefaultContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    LocaleKeys.uppercase.tr(),
                  ),
                  Observer(
                    builder: (_) {
                      return Switch(
                        value: _viewModel.containsUppercase,
                        onChanged: (value) {
                          _viewModel.containsUppercase = !_viewModel.containsUppercase;
                          _viewModel.generatePassword();
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: context.lowValue,
            ),
            DefaultContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    LocaleKeys.lowercase.tr(),
                  ),
                  Observer(
                    builder: (_) {
                      return Switch(
                        value: _viewModel.containsLowercase,
                        onChanged: (value) {
                          _viewModel.containsLowercase = !_viewModel.containsLowercase;
                          _viewModel.generatePassword();
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: context.lowValue,
            ),
            DefaultContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    LocaleKeys.digits.tr(),
                  ),
                  Observer(
                    builder: (_) {
                      return Switch(
                        value: _viewModel.containsNumber,
                        onChanged: (value) {
                          _viewModel.containsNumber = !_viewModel.containsNumber;
                          _viewModel.generatePassword();
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: context.lowValue,
            ),
            DefaultContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    LocaleKeys.symbols.tr(),
                  ),
                  Observer(
                    builder: (_) {
                      return Switch(
                        value: _viewModel.containsSpecial,
                        onChanged: (value) {
                          _viewModel.containsSpecial = !_viewModel.containsSpecial;
                          _viewModel.generatePassword();
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: Observer(
                    builder: (_) {
                      return ElevatedButton(
                        onPressed:
                            _viewModel.isAllSettingsDisabled == true ? null : () => _viewModel.generatePassword(),
                        child: Text(
                          LocaleKeys.generate_password.tr(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
