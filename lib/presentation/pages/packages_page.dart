import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pub/presentation/providers/packages_provider.dart';
import 'package:pub/presentation/widgets/package_item.dart';

class PackagesPage extends ConsumerWidget {
  const PackagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final packagesAsyncValue = ref.watch(packagesProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFFEF7FF),
      appBar: AppBar(
        title: const Text('pub.dev', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1c2834),
        centerTitle: false,
      ),
      body: SafeArea(
        child: switch (packagesAsyncValue) {
          AsyncValue(:final value?) => RefreshIndicator(
            onRefresh: () => ref.refresh(packagesProvider.future),
            child: NotificationListener<ScrollEndNotification>(
              onNotification: _handleScrollNotification,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    PackageItem(package: value[index]),
                separatorBuilder: (_, _) => const SizedBox(height: 12),
                itemCount: value.length,
              ),
            ),
          ),
          AsyncValue(error: != null) => Center(
            child: Text('Error: ${packagesAsyncValue.error}'),
          ),
          _ => const Center(child: CircularProgressIndicator()),
        },
      ),
    );
  }

  bool _handleScrollNotification(ScrollEndNotification notification) {
    final metrics = notification.metrics;
    final isAtBottom =
        metrics.maxScrollExtent > 0 &&
        metrics.pixels >= metrics.maxScrollExtent;

    if (isAtBottom) {
      // ignore: avoid_print
      print('Reached bottom');
    }

    return false;
  }
}
