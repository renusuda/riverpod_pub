import 'package:pub/models/package.dart';
import 'package:pub/repositories/remote/packages_remote_data_source.dart';

class PackagesRepository {
  PackagesRepository({required PackagesRemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  final PackagesRemoteDataSource _remoteDataSource;

  Future<List<Package>> fetchPackages() async {
    final packages = await _remoteDataSource.fetchPackages();
    return packages;
  }
}
