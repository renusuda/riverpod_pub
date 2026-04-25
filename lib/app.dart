import 'package:flutter/material.dart';
import 'package:pub/presentation/pages/packages_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const PackagesPage(),
    );
  }
}
