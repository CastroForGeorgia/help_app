import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:help_app/bloc/theme/app_theme.dart';
import 'package:help_app/features/settings/settings.dart';
import 'package:help_app/generated/l10n.dart';
import 'package:help_app/index.dart';
import 'package:mocktail/mocktail.dart';

class MockThemeCubit extends MockCubit<AppTheme> implements ThemeCubit {}

extension on WidgetTester {
  Future<void> pumpSettings(ThemeCubit themeCubit) {
    return pumpWidget(
      MaterialApp(
        localizationsDelegates: [
          const AppLocalizationDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        locale: const Locale('en'),
        home: BlocProvider.value(
          value: themeCubit,
          child: const SettingsScreen(),
        ),
      ),
    );
  }
}

void main() {
  late ThemeCubit themeCubit;

  setUp(() {
    themeCubit = MockThemeCubit();
  });
  
  group('Settings Screen Tests', () {
    testWidgets('renders settings title', (tester) async {
      when(() => themeCubit.state).thenReturn(AppTheme.light);
      when(() => themeCubit.themeMode).thenReturn(ThemeMode.light);

      await tester.pumpSettings(themeCubit);
      await tester.pump();

      expect(find.text('Settings'), findsOneWidget);
    });

    testWidgets('render setting list', (tester) async {
      when(() => themeCubit.state).thenReturn(AppTheme.light);
      when(() => themeCubit.themeMode).thenReturn(ThemeMode.light);

      await tester.pumpSettings(themeCubit);
      await tester.pump();

      expect(find.byType(ListView), findsOneWidget);
    });

    testWidgets('render setting list items', (tester) async {
      when(() => themeCubit.state).thenReturn(AppTheme.light);
      when(() => themeCubit.themeMode).thenReturn(ThemeMode.light);

      await tester.pumpSettings(themeCubit);
      await tester.pump();

      expect(find.text('Theme'), findsOneWidget);
      expect(find.byIcon(Icons.palette), findsOneWidget);
      expect(find.byIcon(Icons.chevron_right), findsNWidgets(1));
      expect(find.byType(SettingCell), findsNWidgets(1));
    });

    testWidgets('render bottom sheet dialog items', (tester) async {
      when(() => themeCubit.state).thenReturn(AppTheme.light);
      when(() => themeCubit.themeMode).thenReturn(ThemeMode.light);

      await tester.pumpSettings(themeCubit);
      await tester.pump();
      await tester.tap(find.byIcon(Icons.palette));
      await tester.pumpAndSettle();

      expect(find.byType(ThemeDialogCell<AppTheme>), findsNWidgets(8));
    });
  });
}
