import 'package:dio/dio.dart';
import 'package:pub/domain/package.dart';

abstract class PackagesRemoteDataSource {
  Future<List<Package>> fetchPackages({
    required int page,
    CancelToken? cancelToken,
  });
}
