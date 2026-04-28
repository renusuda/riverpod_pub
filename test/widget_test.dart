import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pub/src/data/remote/packages_remote_data_source.dart';
import 'package:pub/src/app.dart';
import 'package:pub/src/domain/package.dart';
import 'package:pub/src/domain/package_score.dart';
import 'package:pub/src/presentation/providers/packages_provider.dart';
import 'package:pub/src/routing/router.dart';

class _PackagesRemoteDataSource implements PackagesRemoteDataSource {
  int callCount = 0;

  @override
  Future<List<Package>> fetchPackages({
    required int page,
    CancelToken? cancelToken,
  }) async {
    callCount++;

    if (callCount > 1) {
      return [
        Package(
          name: 'riverpod',
          version: '3.0.0',
          description: 'A reactive caching and data-binding framework.',
        ),
      ];
    }

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

  @override
  Future<Package> fetchPackageDetail({
    required String packageName,
    CancelToken? cancelToken,
  }) async {
    return Package(
      name: packageName,
      version: '1.4.2',
      description: 'Detailed package description.',
    );
  }

  @override
  Future<PackageScore> fetchPackageScore({
    required String packageName,
    CancelToken? cancelToken,
  }) async {
    return PackageScore(likeCount: 3964, grantedPoints: 160, maxPoints: 160);
  }
}

void main() {
  setUp(() {
    goRouter.go('/');
  });

  testWidgets('shows package list', (tester) async {
    final remoteDataSource = _PackagesRemoteDataSource();

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          packagesRemoteDataSourceProvider.overrideWithValue(remoteDataSource),
        ],
        child: const App(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('geophrase_flutter'), findsOneWidget);
    expect(find.text('1.4.1'), findsOneWidget);
    expect(find.textContaining('Embed Geophrase Connect'), findsOneWidget);
    expect(find.text('flutter_document_reader_api'), findsOneWidget);
    expect(remoteDataSource.callCount, 1);
  });

  testWidgets('refreshes package list', (tester) async {
    final remoteDataSource = _PackagesRemoteDataSource();

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          packagesRemoteDataSourceProvider.overrideWithValue(remoteDataSource),
        ],
        child: const App(),
      ),
    );
    await tester.pumpAndSettle();

    await tester.fling(find.byType(ListView), const Offset(0, 300), 1000);
    await tester.pumpAndSettle();

    expect(remoteDataSource.callCount, 2);
    expect(find.text('riverpod'), findsOneWidget);
    expect(find.text('geophrase_flutter'), findsNothing);
  });

  testWidgets('shows package detail', (tester) async {
    final remoteDataSource = _PackagesRemoteDataSource();

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          packagesRemoteDataSourceProvider.overrideWithValue(remoteDataSource),
        ],
        child: const App(),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('geophrase_flutter'));
    await tester.pumpAndSettle();

    expect(find.text('geophrase_flutter 1.4.2'), findsOneWidget);
    expect(find.text('Detailed package description.'), findsOneWidget);
    expect(find.text('3964'), findsOneWidget);
    expect(find.text('160/160'), findsOneWidget);
    expect(find.text('LIKES'), findsOneWidget);
    expect(find.text('PUB POINTS'), findsOneWidget);
  });
}
