import 'package:dio/dio.dart';
import 'package:pub/domain/package.dart';
import 'package:pub/data/packages_repository.dart';
import 'package:pub/data/remote/api_packages_remote_data_source.dart';
import 'package:pub/data/remote/packages_remote_data_source.dart';
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
