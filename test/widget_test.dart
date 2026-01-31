import 'package:flutter_test/flutter_test.dart';
import 'package:grocery_app_clean/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
  });
}
