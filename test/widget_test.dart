import 'package:flutter_test/flutter_test.dart';
import 'package:grocery_app_clean/grocery_app.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const GroceryApp());

    // Just verify that the app builds without crashing
    expect(find.byType(GroceryApp), findsOneWidget);
  });
}
