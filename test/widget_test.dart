import 'package:flutter_test/flutter_test.dart';

import 'package:seo/main.dart';

void main() {
  testWidgets('App runs', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
  });
}
