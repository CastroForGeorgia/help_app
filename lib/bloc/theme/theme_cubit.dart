import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:help_app/bloc/theme/app_theme.dart';
import 'package:help_app/index.dart';
import 'package:help_app/repository/theme_repository.dart';

final Map<AppTheme, ThemeData> themeData = {
  AppTheme.light: Style.helpAppLightTheme,
};

/// Saves and loads information regarding the theme setting.
class ThemeCubit extends Cubit<AppTheme> {
  ThemeCubit(this.themeRepository) : super(defaultTheme);

  final ThemeRepository themeRepository;

  static const defaultTheme = AppTheme.light;

  Future<void> loadTheme() async {
    final savedTheme = await themeRepository.getTheme();
    emit(savedTheme);
  }

  AppTheme get theme => state;

  set setTheme(AppTheme theme) {
    themeRepository.saveTheme(theme);
    emit(theme);
  }

  void updateTheme(AppTheme value) => setTheme = value;

  /// Returns appropriate theme mode
  ThemeMode get themeMode {
    return ThemeMode.light;
  }

  /// Default theme
  ThemeData getDefaultTheme() {
    switch (state) {
      case AppTheme.light:
        return themeData[AppTheme.light] ?? Style.light;
    }
  }
}
