import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:pub/src/app.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}
