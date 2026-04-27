import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pub/src/domain/package.dart';
import 'package:pub/src/presentation/providers/packages_provider.dart';

class PackageDetailPage extends ConsumerWidget {
  const PackageDetailPage({super.key, required this.packageName});

  final String packageName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final packageAsyncValue = ref.watch(
      packageDetailProvider(packageName: packageName),
    );

    return Scaffold(
      backgroundColor: const Color(0xFFFEF7FF),
      appBar: AppBar(
        title: const Text('pub.dev', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1c2834),
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: packageAsyncValue.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
        data: (package) => _PackageDetailBody(package: package),
      ),
    );
  }
}

class _PackageDetailBody extends StatelessWidget {
  const _PackageDetailBody({required this.package});

  final Package package;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('${package.name} ${package.version}', style: textTheme.titleLarge),
        const SizedBox(height: 12),
        Text(
          package.description,
          style: textTheme.bodyMedium?.copyWith(color: const Color(0xFF4F4A55)),
        ),
      ],
    );
  }
}
