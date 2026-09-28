import 'package:flutter_test/flutter_test.dart';
import 'package:app14/main.dart';

void main() {
  testWidgets('QuoteDaily renders app correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const QuoteDailyApp());
    expect(find.byType(QuoteDailyApp), findsOneWidget);
  });
}
