import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:data_table_lab/main.dart';

void main() {
  testWidgets('tapping Price sorts ascending', (tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Price'));
    await tester.pump();

    final table = tester.widget<DataTable>(find.byType(DataTable));
    expect(table.sortColumnIndex, 2);
    expect(table.sortAscending, true);
  });
}
