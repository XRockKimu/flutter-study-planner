import 'package:flutter/material.dart';
import '../../data/task.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});
  
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(
      id: "A",
      title: "Study",
      description: "The Best",
      dateTime: DateTime(2026, 3, 27, 8, 0),
      isCompleted: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Study Planner")),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(9),
                    child: Text(tasks[index].title),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
