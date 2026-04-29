import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pub/src/domain/package.dart';
import 'package:pub/src/domain/package_score.dart';
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
        const SizedBox(height: 72),
        _PackageScoreSummary(score: package.score!),
      ],
    );
  }
}

class _PackageScoreSummary extends StatelessWidget {
  const _PackageScoreSummary({required this.score});

  final PackageScore score;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _PackageLikes(value: score.likeCount.toString(), label: 'LIKES'),
        _PackagePubPointsItem(
          grantedPoints: score.grantedPoints,
          maxPoints: score.maxPoints,
          label: 'PUB POINTS',
        ),
      ],
    );
  }
}

class _PackageLikes extends StatelessWidget {
  const _PackageLikes({required this.value, required this.label});

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          value,
          style: textTheme.displaySmall?.copyWith(
            color: const Color(0xFF1967D2),
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        Text(
          label,
          style: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _PackagePubPointsItem extends StatelessWidget {
  const _PackagePubPointsItem({
    required this.grantedPoints,
    required this.maxPoints,
    required this.label,
  });

  final int grantedPoints;
  final int maxPoints;
  final String label;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text.rich(
          TextSpan(
            text: grantedPoints.toString(),
            style: const TextStyle(color: Color(0xFF1967D2)),
            children: [
              TextSpan(
                text: '/$maxPoints',
                style: textTheme.displaySmall?.copyWith(
                  color: const Color(0xFF1967D2),
                  fontSize: 20,
                ),
              ),
            ],
          ),
          style: textTheme.displaySmall?.copyWith(
            color: const Color(0xFF1967D2),
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        Text(
          label,
          style: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
