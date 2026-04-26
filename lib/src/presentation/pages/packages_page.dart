import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pub/src/presentation/providers/packages_provider.dart';
import 'package:pub/src/presentation/widgets/package_item.dart';
import 'package:pub/src/presentation/widgets/package_item_shimmer.dart';
import 'package:pub/src/presentation/widgets/package_search_bar.dart';

const _pageSize = 100;

class PackagesPage extends ConsumerWidget {
  const PackagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF7FF),
      appBar: AppBar(
        title: const Text('pub.dev', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1c2834),
        centerTitle: false,
      ),
      body: Column(
        children: [
          const PackageSearchBar(),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () {
                ref.invalidate(packagesProvider);
                return ref.read(packagesProvider(page: 1).future);
              },
              child: ListView.custom(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                physics: const AlwaysScrollableScrollPhysics(),
                childrenDelegate: SliverChildBuilderDelegate((context, index) {
                  final page = index ~/ _pageSize + 1;
                  final packagesAsyncValue = ref.watch(
                    packagesProvider(page: page),
                  );

                  return packagesAsyncValue.when(
                    loading: () => const PackageItemShimmer(),
                    error: (err, _) => Center(child: Text('Error: $err')),
                    data: (packages) {
                      final indexInPage = index % _pageSize;
                      if (indexInPage >= packages.length) return null;
                      return PackageItem(package: packages[indexInPage]);
                    },
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
