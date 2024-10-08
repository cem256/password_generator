import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_generator/app/l10n/extensions/app_l10n_extensions.dart';
import 'package:password_generator/app/router/app_router.gr.dart';
import 'package:password_generator/app/widgets/container/custom_container.dart';
import 'package:password_generator/app/widgets/drawer/custom_drawer.dart';
import 'package:password_generator/core/extensions/context_extensions.dart';
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
          context.l10n.history,
        ),
        actions: [
          IconButton(
            onPressed: () => context.router.push(const LanguageRoute()),
            icon: const Icon(Icons.language),
          ),
        ],
      ),
      drawer: const CustomDrawer(),
      body: BlocConsumer<PasswordHistoryCubit, PasswordHistoryState>(
        listener: (context, state) {
          if (state.isCopied) {
            SnackbarUtils.showSnackbar(
              context: context,
              message: context.l10n.password_copied,
            );
          }
          if (state.isDeleted) {
            SnackbarUtils.showSnackbar(
              context: context,
              message: context.l10n.password_deleted,
            );
          }
        },
        builder: (context, state) {
          if (state.history.isEmpty) {
            return Center(
              child: Text(
                context.l10n.history_empty,
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
                    context.l10n.password_history.toUpperCase(),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.history.length,
                      itemBuilder: (context, index) => _PasswordHistoryTile(password: state.history[index]),
                    ),
                  ),
                ],
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
    return CustomContainer(
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
          ),
        ],
      ),
    );
  }
}
