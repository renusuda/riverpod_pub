import 'package:flutter/material.dart';
import 'package:pub/models/pub_package.dart';

class PackageItem extends StatelessWidget {
  const PackageItem({super.key, required this.package});

  final PubPackage package;

  @override
  Widget build(BuildContext context) {
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
                style: const TextStyle(
                  color: Color(0xFF0175C2),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(package.version, style: const TextStyle(fontSize: 14)),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          package.description,
          style: const TextStyle(color: Color(0xFF4F4A55), fontSize: 14),
        ),
      ],
    );
  }
}
