import 'package:flutter/material.dart';

class DailyProperty extends StatefulWidget {
  const DailyProperty({super.key});

  @override
  State<DailyProperty> createState() => _DailyPropertyState();
}

class _DailyPropertyState extends State<DailyProperty> {
  @override
  Widget build(BuildContext context) {
    //making a component that has its tasks in
    //catagory 1,2,3,4,5, and soo on all elements are here
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
              width: 370,
              height: 274,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: 350,
                      height: 130,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 245, 245, 245),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30, top: 10),
                            child: Row(
                              children: [
                                Text(
                                  'Task title',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 180),
                                  child: Text(
                                    '10:00pm',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 30, right: 10, top: 10),
                            child: SizedBox(
                              width: 330,
                              height: 50,
                              child: Text(
                                  'This is where the description is written. A description shows more details about the task. The details that are missed in the title.'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: 350,
                        height: 130,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 245, 245, 245),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 30, top: 10),
                              child: Row(
                                children: [
                                  Text(
                                    'Task title',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 180),
                                    child: Text(
                                      '10:00pm',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 30, right: 10, top: 10),
                              child: SizedBox(
                                width: 330,
                                height: 50,
                                child: Text(
                                    'This is where the description is written. A description shows more details about the task. The details that are missed in the title.'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )))
    ]);
  }
}
