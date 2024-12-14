import 'package:flutter/material.dart';
import 'package:help_app/index.dart';
import 'package:help_app/repository/email_list_repository.dart';
import 'package:mockito/annotations.dart';

export 'mocks.mocks.dart';

@GenerateMocks([
  EmailListRepository,
], customMocks: [
  MockSpec<NavigatorObserver>(onMissingStub: OnMissingStub.returnDefault)
])
// ignore: unused_element
class _Mocks {}
