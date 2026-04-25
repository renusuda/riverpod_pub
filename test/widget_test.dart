import 'package:flutter_test/flutter_test.dart';
import 'package:pub/main.dart';

void main() {
  testWidgets('shows pub package list', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('geophrase_flutter'), findsOneWidget);
    expect(find.text('1.4.1'), findsOneWidget);
    expect(find.textContaining('Embed Geophrase Connect'), findsOneWidget);
    expect(find.text('flutter_document_reader_api'), findsOneWidget);
  });
}
