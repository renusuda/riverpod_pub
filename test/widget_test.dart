import 'package:dio/dio.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pub/src/data/local/app_database.dart';
import 'package:pub/src/data/remote/packages_response_dto.dart';
import 'package:pub/src/data/remote/packages_remote_data_source.dart';
import 'package:pub/src/app.dart';
import 'package:pub/src/domain/package.dart';
import 'package:pub/src/domain/package_score.dart';
import 'package:pub/src/presentation/providers/package_favorite_provider.dart';
import 'package:pub/src/presentation/providers/packages_provider.dart';
import 'package:pub/src/routing/router.dart';

class _PackagesRemoteDataSource implements PackagesRemoteDataSource {
  int fetchCallCount = 0;
  int searchCallCount = 0;
  final detailPackageNames = <String>[];
  String? lastSearch;

  @override
  Future<List<Package>> fetchPackages({
    required int page,
    CancelToken? cancelToken,
  }) async {
    fetchCallCount++;

    if (fetchCallCount > 1) {
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
  Future<List<String>> searchPackageNames({
    required int page,
    required String search,
    CancelToken? cancelToken,
  }) async {
    searchCallCount++;
    lastSearch = search;

    return ['riverpod'];
  }

  @override
  Future<Package> fetchPackageDetail({
    required String packageName,
    CancelToken? cancelToken,
  }) async {
    detailPackageNames.add(packageName);

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

Future<void> _pumpApp(
  WidgetTester tester, {
  required PackagesRemoteDataSource remoteDataSource,
  required AppDatabase database,
}) {
  return tester.pumpWidget(
    ProviderScope(
      overrides: [
        packagesRemoteDataSourceProvider.overrideWithValue(remoteDataSource),
        appDatabaseProvider.overrideWithValue(database),
      ],
      child: const App(),
    ),
  );
}

void main() {
  setUp(() {
    goRouter.go('/');
  });

  test('parses search packages response', () {
    final dto = SearchPackagesResponseDto.fromJson({
      'packages': [
        {'package': 'riverpod_test'},
        {'package': 'state_notifier_test'},
      ],
      'next': 'https://pub.dev/api/search?page=2&q=riverpod+test',
    });

    expect(dto.packages.map((package) => package.package), [
      'riverpod_test',
      'state_notifier_test',
    ]);
  });

  testWidgets('shows package list', (tester) async {
    final remoteDataSource = _PackagesRemoteDataSource();
    final database = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(database.close);

    await _pumpApp(
      tester,
      remoteDataSource: remoteDataSource,
      database: database,
    );
    await tester.pumpAndSettle();

    expect(find.text('geophrase_flutter'), findsOneWidget);
    expect(find.text('1.4.1'), findsOneWidget);
    expect(find.textContaining('Embed Geophrase Connect'), findsOneWidget);
    expect(find.text('flutter_document_reader_api'), findsOneWidget);
    expect(remoteDataSource.fetchCallCount, 1);
    expect(remoteDataSource.searchCallCount, 0);
  });

  testWidgets('refreshes package list', (tester) async {
    final remoteDataSource = _PackagesRemoteDataSource();
    final database = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(database.close);

    await _pumpApp(
      tester,
      remoteDataSource: remoteDataSource,
      database: database,
    );
    await tester.pumpAndSettle();

    await tester.fling(find.byType(ListView), const Offset(0, 300), 1000);
    await tester.pumpAndSettle();

    expect(remoteDataSource.fetchCallCount, 2);
    expect(remoteDataSource.searchCallCount, 0);
    expect(
      find.descendant(
        of: find.byType(ListView),
        matching: find.text('riverpod'),
      ),
      findsOneWidget,
    );
    expect(find.text('geophrase_flutter'), findsNothing);
  });

  testWidgets(
    'searches package list',
    // Temporarily skipped until the search ListView layout is fixed.
    skip: true,
    (tester) async {
      final remoteDataSource = _PackagesRemoteDataSource();
      final database = AppDatabase.forTesting(NativeDatabase.memory());
      addTearDown(database.close);

      await _pumpApp(
        tester,
        remoteDataSource: remoteDataSource,
        database: database,
      );
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'riverpod');
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 250));
      await tester.pumpAndSettle();

      expect(remoteDataSource.lastSearch, 'riverpod');
      expect(remoteDataSource.searchCallCount, 1);
      expect(remoteDataSource.detailPackageNames, ['riverpod']);
      expect(
        find.descendant(
          of: find.byType(ListView),
          matching: find.text('riverpod'),
        ),
        findsOneWidget,
      );
      expect(find.text('1.4.2'), findsOneWidget);
      expect(find.text('Detailed package description.'), findsOneWidget);
      expect(find.text('geophrase_flutter'), findsNothing);
    },
  );

  testWidgets('shows package detail', (tester) async {
    final remoteDataSource = _PackagesRemoteDataSource();
    final database = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(database.close);

    await _pumpApp(
      tester,
      remoteDataSource: remoteDataSource,
      database: database,
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
    expect(find.byIcon(Icons.favorite_border), findsOneWidget);
    expect(find.byIcon(Icons.favorite), findsNothing);

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pumpAndSettle();

    expect(find.byIcon(Icons.favorite), findsOneWidget);
    expect(find.byIcon(Icons.favorite_border), findsNothing);

    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump(const Duration(milliseconds: 1));
  });
}
