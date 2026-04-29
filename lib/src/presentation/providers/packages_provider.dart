import 'dart:async';

import 'package:dio/dio.dart';
import 'package:pub/src/data/packages_repository.dart';
import 'package:pub/src/data/remote/api_packages_remote_data_source.dart';
import 'package:pub/src/data/remote/packages_remote_data_source.dart';
import 'package:pub/src/domain/package.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'packages_provider.g.dart';

@riverpod
PackagesRemoteDataSource packagesRemoteDataSource(Ref ref) {
  return ApiPackagesRemoteDataSource();
}

@riverpod
PackagesRepository packagesRepository(Ref ref) {
  return PackagesRepository(
    remoteDataSource: ref.watch(packagesRemoteDataSourceProvider),
  );
}

@riverpod
Future<List<Package>> packages(Ref ref, {required int page}) async {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);
  final repository = ref.watch(packagesRepositoryProvider);
  return await repository.fetchPackages(page: page, cancelToken: cancelToken);
}

@riverpod
Future<Package> packageDetail(Ref ref, {required String packageName}) async {
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);
  final repository = ref.watch(packagesRepositoryProvider);

  final (package, score) = await (
    repository.fetchPackageDetail(
      packageName: packageName,
      cancelToken: cancelToken,
    ),
    repository.fetchPackageScore(
      packageName: packageName,
      cancelToken: cancelToken,
    ),
  ).wait;

  final packageWithScore = package.copyWith(score: score);

  final timer = Timer(const Duration(seconds: 5), ref.invalidateSelf);
  ref.onDispose(timer.cancel);

  return packageWithScore;
}
