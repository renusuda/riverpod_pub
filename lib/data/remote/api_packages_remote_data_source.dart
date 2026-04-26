import 'package:dio/dio.dart';
import 'package:pub/domain/package.dart';
import 'package:pub/data/remote/packages_remote_data_source.dart';
import 'package:pub/data/remote/packages_response_dto.dart';

class ApiPackagesRemoteDataSource implements PackagesRemoteDataSource {
  ApiPackagesRemoteDataSource({Dio? dio})
    : _dio = dio ?? Dio(BaseOptions(baseUrl: 'https://pub.dev/api/'));

  final Dio _dio;

  @override
  Future<List<Package>> fetchPackages() async {
    final response = await _dio.get<Map<String, Object?>>('packages');
    final dto = PackagesResponseDto.fromJson(response.data!);
    return dto.packages.map((package) => package.toDomain()).toList();
  }
}
