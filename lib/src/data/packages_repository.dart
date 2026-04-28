import 'package:dio/dio.dart';
import 'package:pub/src/domain/package.dart';
import 'package:pub/src/domain/package_score.dart';
import 'package:pub/src/data/remote/packages_remote_data_source.dart';

class PackagesRepository {
  PackagesRepository({required PackagesRemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  final PackagesRemoteDataSource _remoteDataSource;

  Future<List<Package>> fetchPackages({
    required int page,
    CancelToken? cancelToken,
  }) async {
    return await _remoteDataSource.fetchPackages(
      page: page,
      cancelToken: cancelToken,
    );
  }

  Future<Package> fetchPackageDetail({
    required String packageName,
    CancelToken? cancelToken,
  }) async {
    return await _remoteDataSource.fetchPackageDetail(
      packageName: packageName,
      cancelToken: cancelToken,
    );
  }

  Future<PackageScore> fetchPackageScore({
    required String packageName,
    CancelToken? cancelToken,
  }) async {
    return await _remoteDataSource.fetchPackageScore(
      packageName: packageName,
      cancelToken: cancelToken,
    );
  }
}
