import 'package:flutter/material.dart';
import 'package:thename/screens/Event.dart';
import 'package:thename/screens/daily.dart';
import 'package:thename/screens/home_task.dart';
import 'package:thename/screens/long_term.dart';
import 'package:thename/screens/to_do.dart';
//botton barr declaration

//this is the selected button
//set to 2 because the home page is the first page to be on
int _selectedIndex = 2;

/// Flutter code sample for [BottomNavigationBar].

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

//a class that changes states of button bar if an action is done
class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  another(int index) {
    if (index == 0) {
      return (BottomNavigationBar(
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment,
              color: Color.fromARGB(255, 91, 158, 125),
            ),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Longterm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Event ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description_outlined),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Todo',
          ),
        ],
        currentIndex: _selectedIndex,
        // on a tapp the above function is called for operations
        onTap: _onItemTapped,
        backgroundColor: const Color.fromARGB(255, 91, 158, 125),
        //setting the icon sizes
        iconSize: 50,
      ));
    } else if (index == 1) {
      return (BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Daily',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 91, 158, 125),
            ),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Event ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description_outlined),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Todo',
          ),
        ],
        currentIndex: _selectedIndex,
        // on a tapp the above function is called for operations
        onTap: _onItemTapped,
        backgroundColor: const Color.fromARGB(255, 91, 158, 125),
        //setting the icon sizes
        iconSize: 50,
      ));
    } else if (index == 2) {
      return (BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Daily',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Longterm',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 91, 158, 125),
            ),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Event ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description_outlined),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Todo',
          ),
        ],
        currentIndex: _selectedIndex,
        // on a tapp the above function is called for operations
        onTap: _onItemTapped,
        backgroundColor: const Color.fromARGB(255, 91, 158, 125),
        //setting the icon sizes
        iconSize: 50,
      ));
    } else if (index == 3) {
      return (BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Daily',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Longterm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 91, 158, 125),
            ),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description_outlined),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Todo',
          ),
        ],
        currentIndex: _selectedIndex,
        // on a tapp the above function is called for operations
        onTap: _onItemTapped,
        backgroundColor: const Color.fromARGB(255, 91, 158, 125),
        //setting the icon sizes
        iconSize: 50,
      ));
    } else if (index == 4) {
      return (BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Daily',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Longterm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: 'Event ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 91, 158, 125),
            ),
            backgroundColor: Color.fromARGB(255, 91, 158, 125),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        // on a tapp the above function is called for operations
        onTap: _onItemTapped,
        backgroundColor: const Color.fromARGB(255, 91, 158, 125),
        //setting the icon sizes
        iconSize: 50,
      ));
    }
  }

  //it is a function below
  _onItemTapped(
    //this is the integer and every button has a unique integer
    int index,
  ) {
    //for daily button routing

    //if you are on home screen then if you choose daily then the index value
    //becomes 0 and this condition runs and switch the screen to the daily
    if (index == 0) {
      _selectedIndex = index;
      Navigator.pop(context);

      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const Daily();
      }));
    } else if (index == 1) {
      setState(() {
        _selectedIndex = index;
        Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const LongTerm();
        }));
      });
    } else if (index == 2) {
      setState(() {
        _selectedIndex = index;
        Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const Home();
        }));
      });
    } else if (index == 3) {
      setState(() {
        _selectedIndex = index;
        Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const Event();
        }));
      });
    } else if (index == 4) {
      setState(() {
        _selectedIndex = index;
        Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const ToDo();
        }));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    //setting the iconns and buttons names for the bottom barr
    return another(_selectedIndex);
  }
}
