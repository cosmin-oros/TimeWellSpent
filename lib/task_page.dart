import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  List<String> tasks = [];
  List<bool> completedTasks = [];

  void _deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
      completedTasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(tasks[index]),
                  trailing: Checkbox(
                    value: completedTasks[index],
                    onChanged: (bool? value) {
                      setState(() {
                        completedTasks[index] = value ?? false;
                      });
                    },
                  ),
                  onLongPress: () => _deleteTask(index),
                );
              },
            ),
          ),
          Container(
            color: Colors.grey[200],
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Add new task',
                border: InputBorder.none,
              ),
              onSubmitted: (String value) {
                setState(() {
                  tasks.add(value);
                  completedTasks.add(false);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}


