import 'package:flutter/material.dart';
import 'package:my_own_app/press.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Test App',
        ),
      ),
      body: const Press(),
    );
  }
}
