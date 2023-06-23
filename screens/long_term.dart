import 'package:flutter/material.dart';
import 'package:thename/properties/day_s.dart';
import 'package:thename/properties/button_bar.dart';
import 'package:thename/properties/floating_button.dart';
import 'package:thename/properties/mondays.dart';
import 'package:thename/screens/long_term_task.dart';

//it is the long term route or screen
class LongTerm extends StatefulWidget {
  const LongTerm({super.key});

  @override
  State<LongTerm> createState() => _LongTermState();
}

class _LongTermState extends State<LongTerm> {
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
                'LongTerm',
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(
                left: 90,
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
          const Padding(
            padding:  EdgeInsets.only(left: 160, bottom: 100),
            child:  FloatingButton(state: LongTermTask()),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigationBarExample(),
      //same ass the home page
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
        //making a scrollable interface for the tasks using single child scroll view

        child: SingleChildScrollView(
          child: Column(children: [
            //compnent used to represent the catagory 1,2,3 and more
            MyDay(day1: 'Catagory 1'),
            //below each catagory these tasks are arranged
            const DailyProperty(),
            MyDay(day1: 'Catagory 2'),
            const DailyProperty(),
            MyDay(day1: 'Catagory 3'),
            const DailyProperty(),
            MyDay(day1: 'Catagory 4'),
            const DailyProperty(),
            MyDay(day1: 'Catagory 5'),
            const DailyProperty(),
          ]),
        ),
      )),
    );
  }
}
