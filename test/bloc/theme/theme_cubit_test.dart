import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:help_app/bloc/theme/app_theme.dart';
import 'package:help_app/bloc/theme/theme_cubit.dart';
import 'package:help_app/data/theme_storage.dart';
import 'package:help_app/repository/theme_repository.dart';
import 'package:help_app/theme/style.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('ThemeCubit', () {
    late ThemeCubit cubit;
    late ThemeStorage themeStorage;
    late ThemeRepository themeRepository;

    setUp(() async {
      WidgetsFlutterBinding.ensureInitialized();
      SharedPreferences.setMockInitialValues({});
      final sharedPreferences = await SharedPreferences.getInstance();
      themeStorage = SharedPreferencesThemeStorage(sharedPreferences);
      themeRepository = ThemeRepositoryImpl(themeStorage);
      cubit = ThemeCubit(themeRepository);
    });

    tearDown(() {
      cubit.close();
    });

    test('Initial state is defaultTheme', () {
      expect(cubit.state, ThemeCubit.defaultTheme);
    });

    test('loadTheme emits saved theme', () async {
      await cubit.loadTheme();

      expect(cubit.state, AppTheme.light);
    });

    test('themeMode returns appropriate ThemeMode', () {
      cubit.updateTheme(AppTheme.light);
      expect(cubit.themeMode, ThemeMode.light);
    });

    test('getDefaultTheme returns correct ThemeData', () {
      cubit.updateTheme(AppTheme.light);
      expect(cubit.getDefaultTheme(), themeData[AppTheme.light]);
    });

    test('has default light theme', () async {
      expect(cubit.getDefaultTheme(), Style.light);
    });


    void verifyThemeChange(
        {required AppTheme themeState,
        required ThemeMode themeMode,
        required AppTheme expectedThemeState}) {
      cubit.updateTheme(themeState);
      expect(cubit.themeMode, themeMode);
      expect(cubit.state, expectedThemeState);
    }

    test('update to light theme correctly', () async {
      verifyThemeChange(
          themeState: AppTheme.light,
          themeMode: ThemeMode.light,
          expectedThemeState: AppTheme.light);
    });
  });
}
