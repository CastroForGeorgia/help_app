// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i409;
import 'package:get_it/get_it.dart' as _i174;
import 'package:help_app/data/theme_storage.dart' as _i457;
import 'package:help_app/di/di_app_module.dart' as _i175;
import 'package:help_app/di/di_data_module.dart' as _i343;
import 'package:help_app/di/di_repository_module.dart' as _i372;
import 'package:help_app/repository/theme_repository.dart' as _i476;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dIAppModule = _$DIAppModule();
    final dIDataModule = _$DIDataModule();
    final repositoryModule = _$RepositoryModule();
    gh.lazySingleton<_i409.GlobalKey<_i409.NavigatorState>>(
        () => dIAppModule.key);
    gh.lazySingleton<_i457.ThemeStorage>(() => dIDataModule.themeStorage);
    gh.factory<_i476.ThemeRepository>(() =>
        repositoryModule.provideAccidentsRepository(gh<_i457.ThemeStorage>()));
    return this;
  }
}

class _$DIAppModule extends _i175.DIAppModule {}

class _$DIDataModule extends _i343.DIDataModule {}

class _$RepositoryModule extends _i372.RepositoryModule {}
