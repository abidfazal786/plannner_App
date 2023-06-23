import 'package:flutter/material.dart';
//importing the button bar module
import 'package:thename/properties/button_bar.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //color of the background
      backgroundColor: const Color.fromARGB(255, 91, 158, 125),
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              //for the current day on the title bar
              child: Text(
                DateFormat('EEEE').format(DateTime.now()),
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 245, 245, 245),
                    fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 25),
              //for the current date on the title bar
              child: Text(
                DateFormat('yMMMMd').format(DateTime.now()),
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 245, 245, 245),
                    fontSize: 15),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 90, top: 5),
                //for the current date on the title bar
                child: InkWell(
                  child: const Icon(
                    Icons.settings,
                    size: 40,
                  ),
                  onTap: () {},
                )),
          ],
        ),
        //increasing the size of app bar and the elevations
        backgroundColor: const Color.fromARGB(255, 91, 158, 125),
        toolbarHeight: 90,
        bottomOpacity: 0,
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 80,
        height: 80,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.home,
            color: Colors.black,
            size: 50,
          ),
        ),
      ),
      //calling the bootom appbar functions to access on the buttons
      bottomNavigationBar: const BottomNavigationBarExample(),
      //actual white area of the app
      body: Center(
          child: Container(
        width: 450,
        height: 700,
        //decorating and bending the top sides of the container
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 235, 239, 238),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        //this column help us to add each and everything in the home
        //foreexample the big screen task you see and below other tasks
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                elevation: 5,
                child: Container(
                  width: 370,
                  height: 300,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                            width: 350,
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              'It is the title of the task',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 40),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                            width: 320,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              'This is where the description is written. A description shows more details about the task. The details that are missed in the title.',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 15),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                            width: 320,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              'Ends in 1 hour and 15 minutes ',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 20),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
