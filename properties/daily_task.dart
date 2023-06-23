import 'package:flutter/material.dart';

//it is a container for each task stored in daily and longterm and others
//it is being called by them for making a container
class DailyTask extends StatefulWidget {
  const DailyTask({super.key});

  @override
  State<DailyTask> createState() => _DailyTaskState();
}

class _DailyTaskState extends State<DailyTask> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 60,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 245, 245, 245),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Task title'), Text('10:00pm')],
          ),
          Text(
              'This is where the description is written. A description shows more details about the task. The details that are missed in the title.')
        ],
      ),
    );
  }
}
