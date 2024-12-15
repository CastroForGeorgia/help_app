import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:help_app/bloc/theme/app_theme.dart';
import 'package:help_app/generated/l10n.dart';
import 'package:help_app/index.dart';

import 'settings.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).settingsTitle),
        ),
        body: ListView(
          children: <Widget>[
            BlocConsumer<ThemeCubit, AppTheme>(
              builder: (context, state) => SettingCell.icon(
                icon: AppIcons.settingsTheme,
                title: S.of(context).themeTitle,
                onTap: () async => showBottomSheetDialog(
                  context: context,
                  padding: EdgeInsets.zero,
                  children: [
                    ThemeDialogCell<AppTheme>(
                      title: S.of(context).lightThemeTitle,
                      groupValue: state,
                      value: AppTheme.light,
                      onChanged: (value) => updateTheme(context, value),
                    ),
                  ],
                ),
              ),
              listener: (context, state) => Navigator.of(context).pop(),
            ),
          ],
        ),
      );

  void updateTheme(BuildContext context, AppTheme value) =>
      context.read<ThemeCubit>().updateTheme(value);
}
