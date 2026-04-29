import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

class FavoritePackages extends Table {
  TextColumn get packageName => text()();

  @override
  Set<Column> get primaryKey => {packageName};
}

@DriftDatabase(tables: [FavoritePackages])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(driftDatabase(name: 'pub'));

  AppDatabase.forTesting(super.executor);

  @override
  int get schemaVersion => 1;
}
