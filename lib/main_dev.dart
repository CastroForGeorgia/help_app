import 'package:help_app/app_runner.dart';
import 'package:help_app/config/app_config.dart';
import 'package:help_app/config/build_type.dart';
import 'package:help_app/config/environment.dart';

void main(List<String> args) {
  Environment.init(
    buildType: BuildType.staging,
    config: AppConfig(
      url: '',
    ),
  );
  run();
}
