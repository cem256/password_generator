import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_generator/app/l10n/l10n.g.dart';
import 'package:password_generator/app/widgets/default_container_widget.dart';
import 'package:password_generator/app/widgets/drawer_widget.dart';
import 'package:password_generator/core/extensions/context_extensions.dart';
import 'package:password_generator/core/extensions/widget_extensions.dart';
import 'package:password_generator/core/utils/snackbar/snackbar_utils.dart';
import 'package:password_generator/features/password_history/cubit/password_history_cubit.dart';

@RoutePage()
class PasswordHistoryView extends StatelessWidget {
  const PasswordHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.history.tr().toUpperCase(),
        ),
      ),
      drawer: const DrawerWidget(),
      body: BlocConsumer<PasswordHistoryCubit, PasswordHistoryState>(
        listener: (context, state) {
          if (state.isCopied) {
            SnackbarUtils.showSnackbar(
              context: context,
              message: LocaleKeys.password_copied.tr(),
            );
          }
          if (state.isDeleted) {
            SnackbarUtils.showSnackbar(
              context: context,
              message: LocaleKeys.password_deleted.tr(),
            );
          }
        },
        builder: (context, state) {
          if (state.history.isEmpty) {
            return Center(
              child: Text(
                LocaleKeys.history_empty.tr(),
                style: context.textTheme.titleMedium,
              ),
            );
          } else {
            return Padding(
              padding: context.paddingAllDefault,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.password_history.tr().toUpperCase(),
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemCount: state.history.length,
                      separatorBuilder: (context, index) => SizedBox(height: context.mediumValue),
                      itemBuilder: (context, index) => _PasswordHistoryTile(password: state.history[index]),
                    ),
                  ),
                ].spaceBetween(height: context.lowValue),
              ),
            );
          }
        },
      ),
    );
  }
}

class _PasswordHistoryTile extends StatelessWidget {
  const _PasswordHistoryTile({required this.password});

  final String password;

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              password,
              softWrap: false,
              overflow: TextOverflow.fade,
            ),
          ),
          Wrap(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                alignment: Alignment.centerRight,
                icon: const Icon(Icons.content_copy),
                onPressed: () => context.read<PasswordHistoryCubit>().copyPassword(password: password),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                alignment: Alignment.centerRight,
                icon: const Icon(Icons.delete_forever),
                onPressed: () => context.read<PasswordHistoryCubit>().deleteFromHistory(password: password),
              ),
            ],
          )
        ],
      ),
    );
  }
}
