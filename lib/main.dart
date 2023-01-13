import 'package:flutter/material.dart';

void main() {
  runApp(const TimeWellSpent());
}

class TimeWellSpent extends StatelessWidget {
  const TimeWellSpent({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TimeWellSpent',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TimeWellSpent'),
      ),
      body: const Center(
        child: Text('Welcome to TimeWellSpent'),
      ),
    );
  }
}

