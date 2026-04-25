import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pub/app.dart';

void main() {
  testWidgets('shows package list', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: App()));
    await tester.pumpAndSettle();

    expect(find.text('geophrase_flutter'), findsOneWidget);
    expect(find.text('1.4.1'), findsOneWidget);
    expect(find.textContaining('Embed Geophrase Connect'), findsOneWidget);
    expect(find.text('flutter_document_reader_api'), findsOneWidget);
  });
}
