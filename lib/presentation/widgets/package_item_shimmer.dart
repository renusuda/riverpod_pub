import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PackageItemShimmer extends StatelessWidget {
  const PackageItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.white,
      child: ListTile(
        title: Row(
          children: [_Pill(width: 100), const Spacer(), _Pill(width: 40)],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            children: [
              _Pill(width: double.infinity),
              const SizedBox(height: 5),
              _Pill(width: double.infinity),
            ],
          ),
        ),
      ),
    );
  }
}

class _Pill extends StatelessWidget {
  const _Pill({required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14,
      width: width,
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
    );
  }
}
