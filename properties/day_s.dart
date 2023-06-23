import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyDay extends StatelessWidget {
  String day1 = '';
  MyDay({super.key, required this.day1});

  @override
  Widget build(BuildContext context) {
    //component is made for the catagory
    return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          day1,
          style: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 148, 148, 148)),
        ));
  }
}
