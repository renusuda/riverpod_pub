import 'dart:convert';

import 'package:pub/domain/package.dart';
import 'package:pub/data/remote/packages_remote_data_source.dart';
import 'package:pub/data/remote/packages_response_dto.dart';
import 'package:pub/data/remote/pub_api.dart';
import 'package:http/http.dart' as http;

class ApiPackagesRemoteDataSource implements PackagesRemoteDataSource {
  ApiPackagesRemoteDataSource({http.Client? client})
    : _client = client ?? http.Client();

  final http.Client _client;

  @override
  Future<List<Package>> fetchPackages() async {
    final uri = PubApi.endpoint('packages');
    final response = await _client.get(uri);
    if (response.statusCode != 200) {
      throw StateError('パッケージ取得に失敗しました。: ${response.statusCode}');
    }

    final json = jsonDecode(response.body) as Map<String, Object?>;
    final dto = PackagesResponseDto.fromJson(json);
    return dto.packages.map((package) => package.toDomain()).toList();
  }
}
