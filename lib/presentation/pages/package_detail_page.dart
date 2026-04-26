import 'package:flutter/material.dart';
import 'package:pub/domain/package.dart';

class PackageDetailPage extends StatelessWidget {
  const PackageDetailPage({super.key, required this.package});

  final Package package;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: const Color(0xFFFEF7FF),
      appBar: AppBar(
        title: const Text('pub.dev', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1c2834),
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            '${package.name} ${package.version}',
            style: textTheme.titleLarge,
          ),
          const SizedBox(height: 12),
          Text(
            package.description,
            style: textTheme.bodyMedium?.copyWith(
              color: const Color(0xFF4F4A55),
            ),
          ),
        ],
      ),
    );
  }
}
