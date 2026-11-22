import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:bottom_navigator_bar_lab/main.dart';

void main() {
  testWidgets('tapping Alarm switches the screen', (tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => TabModel(),
        child: const MyApp(),
      ),
    );
    expect(find.text('Home'), findsNWidgets(2));

    await tester.tap(find.text('Alarm'));
    await tester.pump();

    expect(find.text('Alarm'), findsNWidgets(2));
    expect(find.text('Home'), findsOneWidget);
  });
}
