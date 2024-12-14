import 'package:help_app/data/theme_storage.dart';
import 'package:help_app/di/di_container.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DIDataModule {
  @lazySingleton
  ThemeStorage get themeStorage =>
      SharedPreferencesThemeStorage(diContainer.get());
}
