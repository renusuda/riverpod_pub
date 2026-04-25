import 'package:flutter/material.dart';
import 'package:pub/models/pub_package.dart';
import 'package:pub/widgets/package_item.dart';

const _packages = [
  PubPackage(
    name: 'flutter_document_reader_core_fullauthrfid',
    version: '9.3.1980',
    description:
        'This is a flutter module for Regula Document Reader Core. Use as dependency with flutter_document_reader_api.',
  ),
  PubPackage(
    name: 'geophrase_flutter',
    version: '1.4.1',
    description:
        'Embed Geophrase Connect in your Flutter app to capture GPS-validated delivery addresses at checkout, reducing failed deliveries for your customers.',
  ),
  PubPackage(
    name: 'flutter_document_reader_api',
    version: '9.3.1113',
    description:
        'This is a flutter module for Regula document reader. It allows you to easily scan documents, for example passport, using your phone\'s camera. Supports Android and iOS.',
  ),
];

class PackagesPage extends StatelessWidget {
  const PackagesPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF7FF),
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          itemBuilder: (context, index) =>
              PackageItem(package: _packages[index]),
          separatorBuilder: (_, _) => const SizedBox(height: 12),
          itemCount: _packages.length,
        ),
      ),
    );
  }
}
