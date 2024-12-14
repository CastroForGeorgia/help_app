import 'package:help_app/data/theme_storage.dart';
import 'package:help_app/repository/theme_repository.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RepositoryModule {
  @factoryMethod
  ThemeRepository provideAccidentsRepository(ThemeStorage themeStorage) =>
      ThemeRepositoryImpl(themeStorage);
}
