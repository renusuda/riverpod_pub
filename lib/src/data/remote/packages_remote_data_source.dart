import 'package:dio/dio.dart';
import 'package:pub/src/domain/package.dart';

abstract class PackagesRemoteDataSource {
  Future<List<Package>> fetchPackages({
    required int page,
    CancelToken? cancelToken,
  });

  Future<Package> fetchPackageDetail({
    required String packageName,
    CancelToken? cancelToken,
  });
}
