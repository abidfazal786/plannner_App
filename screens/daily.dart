import 'package:flutter/material.dart';
import 'package:thename/properties/button_bar.dart';
import 'package:thename/properties/floating_button.dart';
import 'package:thename/properties/mondays.dart';
import 'package:thename/screens/new_task.dart';
import 'package:thename/properties/day_s.dart';

//page for the daily tasking
class Daily extends StatefulWidget {
  const Daily({super.key});

  @override
  State<Daily> createState() => _DailyState();
}

class _DailyState extends State<Daily> {
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
                'Daily Task',
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
                left: 20,
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
            padding: EdgeInsets.only(left: 230, bottom: 100),
            child: FloatingButton(state: NewTask()),
          ),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              //for the days as we selected the catagories
              MyDay(day1: 'Monday'),
              //same as the container made
              const DailyProperty(),
              MyDay(day1: 'Tuesday'),
              const DailyProperty(),
              MyDay(day1: 'Wednesday'),
              const DailyProperty(),
              MyDay(day1: 'Thrusday'),
              const DailyProperty(),
              MyDay(day1: 'Friday'),
              const DailyProperty(),
              MyDay(day1: 'Saturday'),
              const DailyProperty(),
              MyDay(day1: 'Sunday'),
              const DailyProperty(),
            ],
          ),
        ),
      )),
    );
  }
}
