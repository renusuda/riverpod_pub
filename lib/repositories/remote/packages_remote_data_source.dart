import 'package:pub/models/package.dart';

abstract class PackagesRemoteDataSource {
  Future<List<Package>> fetchPackages();
}
