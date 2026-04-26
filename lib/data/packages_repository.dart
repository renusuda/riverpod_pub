import 'package:pub/domain/package.dart';
import 'package:pub/data/remote/packages_remote_data_source.dart';

class PackagesRepository {
  PackagesRepository({required PackagesRemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  final PackagesRemoteDataSource _remoteDataSource;

  Future<List<Package>> fetchPackages({required int page}) async {
    final packages = await _remoteDataSource.fetchPackages(page: page);
    return packages;
  }
}
