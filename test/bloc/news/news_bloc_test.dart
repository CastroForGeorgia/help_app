import 'package:flutter_test/flutter_test.dart';
import 'package:help_app/bloc/news/news_bloc.dart';

void main() {
  group('News Event Tests', () {
    test('load event value comparison', () {
      expect(const NewsEvent.load(), const NewsEvent.load());
    });

    test('retry event value comparison', () {
      expect(const NewsEvent.retry(), const NewsEvent.retry());
    });
  });

  group('News State Tests', () {
    test('initial state value comparison', () {
      expect(const NewsState.initial(), const NewsState.initial());
    });

    test('loading state value comparison', () {
      expect(const NewsState.loading(), const NewsState.loading());
    });

    test('error state value comparison', () {
      expect(const NewsState.error(), const NewsState.error());
    });
  });

  group('News Bloc Tests', () {

  });
}
