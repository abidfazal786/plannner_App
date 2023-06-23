import 'package:flutter/material.dart';
//a floating action button called by the longterm screen and daily screen

class FloatingButton extends StatelessWidget {
  //variable widget for routing to some screens like addding a task
  final Widget state;
  const FloatingButton({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        //poping the current screen wherever it is
        Navigator.pop(context);
        //pushing the upcoming screen that you want to switch in
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return state;
          },
        ));
      },
      backgroundColor: const Color.fromARGB(255, 236, 156, 92),
      child: const Icon(
        Icons.add,
      ),
    );
  }
}
