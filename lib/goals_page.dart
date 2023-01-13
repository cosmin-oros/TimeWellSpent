import 'package:flutter/material.dart';

class GoalsPage extends StatefulWidget {
  const GoalsPage({super.key});

  @override
  _GoalsPageState createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  List<String> goals = [];
  List<bool> completedGoals = [];

  void _deleteGoal(int index) {
    setState(() {
      goals.removeAt(index);
      completedGoals.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Goals'),
      ),
      body: Column(
        children: <Widget>[
      Expanded(
      child: ListView.builder(
        itemCount: goals.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(goals[index]),
            trailing: Checkbox(
              value: completedGoals[index],
              onChanged: (bool? value) {
                setState(() {
                  completedGoals[index] = value ?? false;
                });
              },
            ),
            onLongPress: () => _deleteGoal(index),
          );
        },
      ),
    ),
    Container(
      color: Colors.grey[200],
      child: TextField(
        decoration: const InputDecoration(
          hintText: 'Add new goal',
          border: InputBorder.none,
        ),
        onSubmitted: (String value) {
          setState(() {
            goals.add(value);
            completedGoals.add(false);
          });
        },
      ),
    ),
        ],
      ),
    );
  }
}
