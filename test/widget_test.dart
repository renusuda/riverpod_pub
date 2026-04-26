import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pub/data/remote/packages_remote_data_source.dart';
import 'package:pub/app.dart';
import 'package:pub/domain/package.dart';
import 'package:pub/presentation/providers/packages_provider.dart';

class _PackagesRemoteDataSource implements PackagesRemoteDataSource {
  @override
  Future<List<Package>> fetchPackages() async {
    return [
      Package(
        name: 'geophrase_flutter',
        version: '1.4.1',
        description:
            'Embed Geophrase Connect in your Flutter app to capture GPS-validated delivery addresses at checkout.',
      ),
      Package(
        name: 'flutter_document_reader_api',
        version: '9.3.1113',
        description: 'This is a flutter module for Regula document reader.',
      ),
    ];
  }
}

void main() {
  testWidgets('shows package list', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          packagesRemoteDataSourceProvider.overrideWithValue(
            _PackagesRemoteDataSource(),
          ),
        ],
        child: const App(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('geophrase_flutter'), findsOneWidget);
    expect(find.text('1.4.1'), findsOneWidget);
    expect(find.textContaining('Embed Geophrase Connect'), findsOneWidget);
    expect(find.text('flutter_document_reader_api'), findsOneWidget);
  });
}
