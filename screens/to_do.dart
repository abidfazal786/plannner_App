import 'package:flutter/material.dart';
import 'package:thename/properties/button_bar.dart';
import 'package:thename/properties/floating_button.dart';
import 'package:thename/screens/event_task.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 91, 158, 125),
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Todo',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 245, 245, 245),
                      fontSize: 30),
                ),
              ),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 91, 158, 125),
          toolbarHeight: 90,
          bottomOpacity: 0,
          elevation: 0,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 660, left: 300, bottom: 30),
              child: FloatingButton(state: EventTask()),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  left: 300,
                ),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.assignment,
                      color: Colors.black,
                      size: 50,
                    ),
                  ),
                )),
          ],
        ),
        bottomNavigationBar: const BottomNavigationBarExample(),
        body: Center(
            child: Container(
          width: 450,
          height: 700,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 235, 239, 238),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
        )));
  }
}
