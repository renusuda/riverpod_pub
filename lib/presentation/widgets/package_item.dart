import 'package:flutter/material.dart';
import 'package:pub/domain/package.dart';

class PackageItem extends StatelessWidget {
  const PackageItem({super.key, required this.package});

  final Package package;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      title: Row(
        children: [
          Expanded(
            child: Text(
              package.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodyMedium?.copyWith(
                color: const Color(0xFF0175C2),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(package.version),
        ],
      ),
      subtitle: Text(
        package.description,
        style: textTheme.bodyMedium?.copyWith(color: const Color(0xFF4F4A55)),
      ),
    );
  }
}
