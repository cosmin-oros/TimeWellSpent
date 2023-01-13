import 'package:flutter/material.dart';
import 'package:time_well_spent/settings_page.dart';
import 'package:time_well_spent/task_page.dart';

import 'goals_page.dart';

void main() {
  runApp(const TimeWellSpent());
}

class TimeWellSpent extends StatelessWidget {
  const TimeWellSpent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TimeWellSpent',
      home: const HomePage(),
      routes: {
        '/task': (context) => const TaskPage(),
        '/goals': (context) => const GoalsPage(),
        '/settings': (context) => const SettingsPage(),
      },
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Tasks'),
              onPressed: () {
                Navigator.pushNamed(context, '/task');
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Goals'),
              onPressed: () {
                Navigator.pushNamed(context, '/goals');
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Settings'),
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
    );
  }
}


