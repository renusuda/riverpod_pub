import 'package:flutter/material.dart';
import 'package:pub/models/package.dart';

class PackageItem extends StatelessWidget {
  const PackageItem({super.key, required this.package});

  final Package package;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(width: 8),
            Text(package.version),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          package.description,
          style: textTheme.bodyMedium?.copyWith(color: const Color(0xFF4F4A55)),
        ),
      ],
    );
  }
}
