import 'package:dio/dio.dart';
import 'package:pub/domain/package.dart';
import 'package:pub/data/remote/packages_remote_data_source.dart';
import 'package:pub/data/remote/packages_response_dto.dart';
import 'package:pub/data/remote/pub_api.dart';

class ApiPackagesRemoteDataSource implements PackagesRemoteDataSource {
  ApiPackagesRemoteDataSource({Dio? dio}) : _dio = dio ?? Dio();

  final Dio _dio;

  @override
  Future<List<Package>> fetchPackages() async {
    final uri = PubApi.endpoint('packages');
    final response = await _dio.getUri<Map<String, Object?>>(uri);
    final dto = PackagesResponseDto.fromJson(response.data!);
    return dto.packages.map((package) => package.toDomain()).toList();
  }
}
