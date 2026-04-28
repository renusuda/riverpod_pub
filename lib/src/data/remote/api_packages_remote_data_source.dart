import 'package:dio/dio.dart';
import 'package:pub/src/data/remote/packages_remote_data_source.dart';
import 'package:pub/src/data/remote/packages_response_dto.dart';
import 'package:pub/src/domain/package.dart';
import 'package:pub/src/domain/package_score.dart';

class ApiPackagesRemoteDataSource implements PackagesRemoteDataSource {
  ApiPackagesRemoteDataSource({Dio? dio})
    : _dio = dio ?? Dio(BaseOptions(baseUrl: 'https://pub.dev/api/'));

  final Dio _dio;

  @override
  Future<List<Package>> fetchPackages({
    required int page,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.get<Map<String, Object?>>(
      'packages',
      queryParameters: {'page': page},
      cancelToken: cancelToken,
    );
    final dto = PackagesResponseDto.fromJson(response.data!);
    return dto.packages.map((package) => package.toDomain()).toList();
  }

  @override
  Future<Package> fetchPackageDetail({
    required String packageName,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.get<Map<String, Object?>>(
      'packages/$packageName',
      cancelToken: cancelToken,
    );
    final dto = PackageResponseDto.fromJson(response.data!);
    return dto.toDomain();
  }

  @override
  Future<PackageScore> fetchPackageScore({
    required String packageName,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.get<Map<String, Object?>>(
      'packages/$packageName/score',
      cancelToken: cancelToken,
    );
    final dto = PackageScoreDto.fromJson(response.data!);
    return dto.toDomain();
  }
}
