# help_app 🆘
This is a Flutter project template for creating a Help Application using the BLoC pattern for state management.

[![style: lint][lint-style-badge]][lint-style-link]
[![codecov][codecov-badge]][codecov-link]
[![CI][ci-badge]][ci-link]
[![CodeFactor][codefactor-badge]][codefactor-link]
[![License][license-badge]][license-link]
[![style: effective dart][style-badge]][style-link]
[![GitHub forks][forks-badge]][forks-link]
[![GitHub stars][stars-badge]][stars-link]


## Features 🦄
- Theme support
- BLoC pattern [**bloc**](https://pub.dev/packages/bloc)
- Service Locator using [**get_it**](https://pub.dev/packages/get_it)
- Localization using [**intl**](https://pub.dev/packages/intl)
- CI Setup with GitHub Actions
- Codecov Setup with GitHub Actions
- Unit test coverage

## Configuration
The template has 3 flavors:
- dev
- prod
- qa

The template has 3 build variants:
- debug
- profile
- release

For example dev configuration for Android Studio looks like:

<p align="left">
<img src="/preview/config/dev.png" width="32%"/>
</p>


## Static Analysis 🔍

This template is using [**analyzer**](https://pub.dev/packages/analyzer)

Supported Lint [**Rules**](https://dart-lang.github.io/linter/lints/)

Supported Dart Code [**Metrics**](https://dartcodemetrics.dev/docs/getting-started/introduction)

Dart [**Lint**](https://github.com/passsy/dart-lint)

## CI ⚙️
This template is using [**GitHub Actions**](https://github.com/ashtanko/flutter_app_skeleton/actions) as CI.

## How to build 🛠️

The Project uses [**FlutterGen**](https://github.com/FlutterGen/flutter_gen) to generate localizations, dependencies and mocks

Activate flutter_gen using dart pub global activate flutter_gen command if you haven't done that before.

after add export PATH="$PATH":"$HOME/.pub-cache/bin" to bash_profile

``` bash
# clean project, install dependencies & generate sources
make

# generate localizations, dependencies, image assets, colors, fonts
make gen

# generate localizations
make localize

# analyze the project
make check
```

## Contributing 🤝

Feel free to open a issue or submit a pull request for any bugs/improvements.

## License 📄

This template is licensed under the MIT License - see the [License](LICENSE) file for details.
Please note that the generated template is offering to start with a MIT license but you can change it to whatever you wish, as long as you attribute under the MIT terms that you're using the template.

[lint-style-badge]: https://img.shields.io/badge/style-lint-4BC0F5.svg
[lint-style-link]: https://pub.dev/packages/lint
[codecov-badge]: https://codecov.io/gh/CastroForGeorgia/help_app/branch/main/graph/badge.svg?token=T68Rqwj7Ll
[codecov-link]: https://codecov.io/gh/CastroForGeorgia/help_app
[ci-badge]: https://github.com/CastroForGeorgia/help_app/actions/workflows/ci.yml/badge.svg
[ci-link]: https://github.com/CastroForGeorgia/help_app/actions/workflows/ci.yml
[codefactor-badge]: https://www.codefactor.io/repository/github/CastroForGeorgia/help_app/badge
[codefactor-link]: https://www.codefactor.io/repository/github/CastroForGeorgia/help_app
[license-badge]: https://img.shields.io/github/license/dart-code-checker/dart-code-metrics
[license-link]: https://github.com/dart-code-checker/dart-code-metrics/blob/master/LICENSE
[style-badge]: https://img.shields.io/badge/style-effective_dart-40c4ff.svg
[style-link]: https://pub.dev/packages/effective_dart
[forks-badge]: https://img.shields.io/github/forks/CastroForGeorgia/help_app
[forks-link]: https://github.com/CastroForGeorgia/help_app/network
[stars-badge]: https://img.shields.io/github/stars/CastroForGeorgia/help_app
[stars-link]: https://github.com/CastroForGeorgia/help_app/stargazers