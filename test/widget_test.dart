import 'package:flutter_test/flutter_test.dart';
import 'package:app15/main.dart';

void main() {
  testWidgets('RecipeBox renders app correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const RecipeBoxApp());
    expect(find.byType(RecipeBoxApp), findsOneWidget);
  });
}
