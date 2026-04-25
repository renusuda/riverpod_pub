import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pub/providers/packages_provider.dart';
import 'package:pub/widgets/package_item.dart';

class PackagesPage extends ConsumerWidget {
  const PackagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final packages = ref.watch(packagesProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFFEF7FF),
      appBar: AppBar(
        title: const Text('pub.dev', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1c2834),
        centerTitle: false,
      ),
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          itemBuilder: (context, index) =>
              PackageItem(package: packages[index]),
          separatorBuilder: (_, _) => const SizedBox(height: 12),
          itemCount: packages.length,
        ),
      ),
    );
  }
}
