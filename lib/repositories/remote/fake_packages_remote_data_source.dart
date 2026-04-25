import 'package:pub/models/package.dart';
import 'package:pub/repositories/remote/packages_remote_data_source.dart';

class FakePackagesRemoteDataSource implements PackagesRemoteDataSource {
  @override
  Future<List<Package>> fetchPackages() async {
    final packages = [
      Package(
        name: 'flutter_document_reader_core_fullauthrfid',
        version: '9.3.1980',
        description:
            'This is a flutter module for Regula Document Reader Core. Use as dependency with flutter_document_reader_api.',
      ),
      Package(
        name: 'geophrase_flutter',
        version: '1.4.1',
        description:
            'Embed Geophrase Connect in your Flutter app to capture GPS-validated delivery addresses at checkout, reducing failed deliveries for your customers.',
      ),
      Package(
        name: 'flutter_document_reader_api',
        version: '9.3.1113',
        description:
            'This is a flutter module for Regula document reader. It allows you to easily scan documents, for example passport, using your phone\'s camera. Supports Android and iOS.',
      ),
    ];
    await Future.delayed(Duration(seconds: 3));
    return packages;
  }
}
