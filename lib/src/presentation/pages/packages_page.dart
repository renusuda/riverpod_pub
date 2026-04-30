import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pub/src/presentation/providers/packages_provider.dart';
import 'package:pub/src/presentation/widgets/package_item.dart';
import 'package:pub/src/presentation/widgets/package_item_shimmer.dart';
import 'package:pub/src/presentation/widgets/package_search_bar.dart';

const _packagesPageSize = 100;
const _searchPageSize = 10;

class PackagesPage extends HookConsumerWidget {
  const PackagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    useListenable(controller);
    final searchText = controller.text;
    final pageSize = searchText.isEmpty ? _packagesPageSize : _searchPageSize;

    return Scaffold(
      backgroundColor: const Color(0xFFFEF7FF),
      appBar: AppBar(
        title: const Text('pub.dev', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1c2834),
        centerTitle: false,
      ),
      body: Column(
        children: [
          PackageSearchBar(controller: controller),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () {
                ref.invalidate(packagesProvider);
                return ref.read(
                  packagesProvider(page: 1, search: searchText).future,
                );
              },
              child: ListView.custom(
                key: ValueKey(searchText),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                physics: const AlwaysScrollableScrollPhysics(),
                childrenDelegate: SliverChildBuilderDelegate((context, index) {
                  final page = index ~/ pageSize + 1;

                  final packagesAsyncValue = ref.watch(
                    packagesProvider(page: page, search: searchText),
                  );

                  return packagesAsyncValue.when(
                    loading: () => const PackageItemShimmer(),
                    error: (err, _) => Center(child: Text('Error: $err')),
                    data: (packages) {
                      final indexInPage = index % pageSize;
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
