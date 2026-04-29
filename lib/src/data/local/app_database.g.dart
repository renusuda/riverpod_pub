// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $FavoritePackagesTable extends FavoritePackages
    with TableInfo<$FavoritePackagesTable, FavoritePackage> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoritePackagesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _packageNameMeta = const VerificationMeta(
    'packageName',
  );
  @override
  late final GeneratedColumn<String> packageName = GeneratedColumn<String>(
    'package_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [packageName];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorite_packages';
  @override
  VerificationContext validateIntegrity(
    Insertable<FavoritePackage> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('package_name')) {
      context.handle(
        _packageNameMeta,
        packageName.isAcceptableOrUnknown(
          data['package_name']!,
          _packageNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_packageNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {packageName};
  @override
  FavoritePackage map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FavoritePackage(
      packageName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}package_name'],
      )!,
    );
  }

  @override
  $FavoritePackagesTable createAlias(String alias) {
    return $FavoritePackagesTable(attachedDatabase, alias);
  }
}

class FavoritePackage extends DataClass implements Insertable<FavoritePackage> {
  final String packageName;
  const FavoritePackage({required this.packageName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['package_name'] = Variable<String>(packageName);
    return map;
  }

  FavoritePackagesCompanion toCompanion(bool nullToAbsent) {
    return FavoritePackagesCompanion(packageName: Value(packageName));
  }

  factory FavoritePackage.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FavoritePackage(
      packageName: serializer.fromJson<String>(json['packageName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'packageName': serializer.toJson<String>(packageName),
    };
  }

  FavoritePackage copyWith({String? packageName}) =>
      FavoritePackage(packageName: packageName ?? this.packageName);
  FavoritePackage copyWithCompanion(FavoritePackagesCompanion data) {
    return FavoritePackage(
      packageName: data.packageName.present
          ? data.packageName.value
          : this.packageName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FavoritePackage(')
          ..write('packageName: $packageName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => packageName.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavoritePackage && other.packageName == this.packageName);
}

class FavoritePackagesCompanion extends UpdateCompanion<FavoritePackage> {
  final Value<String> packageName;
  final Value<int> rowid;
  const FavoritePackagesCompanion({
    this.packageName = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FavoritePackagesCompanion.insert({
    required String packageName,
    this.rowid = const Value.absent(),
  }) : packageName = Value(packageName);
  static Insertable<FavoritePackage> custom({
    Expression<String>? packageName,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (packageName != null) 'package_name': packageName,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FavoritePackagesCompanion copyWith({
    Value<String>? packageName,
    Value<int>? rowid,
  }) {
    return FavoritePackagesCompanion(
      packageName: packageName ?? this.packageName,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (packageName.present) {
      map['package_name'] = Variable<String>(packageName.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoritePackagesCompanion(')
          ..write('packageName: $packageName, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $FavoritePackagesTable favoritePackages = $FavoritePackagesTable(
    this,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [favoritePackages];
}

typedef $$FavoritePackagesTableCreateCompanionBuilder =
    FavoritePackagesCompanion Function({
      required String packageName,
      Value<int> rowid,
    });
typedef $$FavoritePackagesTableUpdateCompanionBuilder =
    FavoritePackagesCompanion Function({
      Value<String> packageName,
      Value<int> rowid,
    });

class $$FavoritePackagesTableFilterComposer
    extends Composer<_$AppDatabase, $FavoritePackagesTable> {
  $$FavoritePackagesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get packageName => $composableBuilder(
    column: $table.packageName,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FavoritePackagesTableOrderingComposer
    extends Composer<_$AppDatabase, $FavoritePackagesTable> {
  $$FavoritePackagesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get packageName => $composableBuilder(
    column: $table.packageName,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FavoritePackagesTableAnnotationComposer
    extends Composer<_$AppDatabase, $FavoritePackagesTable> {
  $$FavoritePackagesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get packageName => $composableBuilder(
    column: $table.packageName,
    builder: (column) => column,
  );
}

class $$FavoritePackagesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FavoritePackagesTable,
          FavoritePackage,
          $$FavoritePackagesTableFilterComposer,
          $$FavoritePackagesTableOrderingComposer,
          $$FavoritePackagesTableAnnotationComposer,
          $$FavoritePackagesTableCreateCompanionBuilder,
          $$FavoritePackagesTableUpdateCompanionBuilder,
          (
            FavoritePackage,
            BaseReferences<
              _$AppDatabase,
              $FavoritePackagesTable,
              FavoritePackage
            >,
          ),
          FavoritePackage,
          PrefetchHooks Function()
        > {
  $$FavoritePackagesTableTableManager(
    _$AppDatabase db,
    $FavoritePackagesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FavoritePackagesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FavoritePackagesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FavoritePackagesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> packageName = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FavoritePackagesCompanion(
                packageName: packageName,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String packageName,
                Value<int> rowid = const Value.absent(),
              }) => FavoritePackagesCompanion.insert(
                packageName: packageName,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FavoritePackagesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FavoritePackagesTable,
      FavoritePackage,
      $$FavoritePackagesTableFilterComposer,
      $$FavoritePackagesTableOrderingComposer,
      $$FavoritePackagesTableAnnotationComposer,
      $$FavoritePackagesTableCreateCompanionBuilder,
      $$FavoritePackagesTableUpdateCompanionBuilder,
      (
        FavoritePackage,
        BaseReferences<_$AppDatabase, $FavoritePackagesTable, FavoritePackage>,
      ),
      FavoritePackage,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$FavoritePackagesTableTableManager get favoritePackages =>
      $$FavoritePackagesTableTableManager(_db, _db.favoritePackages);
}
