import 'package:flutter_test/flutter_test.dart';
import 'package:space_app/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('ApiServiceServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
