import 'package:dio/dio.dart';
import 'package:pub/src/domain/package.dart';
import 'package:pub/src/domain/package_score.dart';

abstract class PackagesRemoteDataSource {
  Future<List<Package>> fetchPackages({
    required int page,
    CancelToken? cancelToken,
  });

  Future<List<String>> searchPackageNames({
    required int page,
    required String search,
    CancelToken? cancelToken,
  });

  Future<Package> fetchPackageDetail({
    required String packageName,
    CancelToken? cancelToken,
  });

  Future<PackageScore> fetchPackageScore({
    required String packageName,
    CancelToken? cancelToken,
  });
}
