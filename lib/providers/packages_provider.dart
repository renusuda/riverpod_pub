import 'package:pub/models/package.dart';
import 'package:pub/repositories/packages_repository.dart';
import 'package:pub/repositories/remote/fake_packages_remote_data_source.dart';
import 'package:pub/repositories/remote/packages_remote_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'packages_provider.g.dart';

@riverpod
PackagesRemoteDataSource packagesRemoteDataSource(Ref ref) {
  return FakePackagesRemoteDataSource();
}

@riverpod
PackagesRepository packagesRepository(Ref ref) {
  return PackagesRepository(
    remoteDataSource: ref.watch(packagesRemoteDataSourceProvider),
  );
}

@riverpod
Future<List<Package>> packages(Ref ref) async {
  final repository = ref.watch(packagesRepositoryProvider);
  return repository.fetchPackages();
}
