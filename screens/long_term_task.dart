import 'package:flutter/material.dart';
import 'package:thename/properties/button_bar.dart';
import 'package:thename/screens/long_term.dart';
//adding a longterm task screen
class LongTermTask extends StatefulWidget {
  const LongTermTask({super.key});

  @override
  State<LongTermTask> createState() => _LongTermTaskState();
}
//used to fetch the time in the time section
class _LongTermTaskState extends State<LongTermTask> {
  void _showTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now());
  }
//for notification button by default it is false
  bool isSwitched = false;
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
                'New Longterm Task',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 40),
                child: Text('Task Title'),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 40),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Title'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 40),
                child: Text('Description'),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 40),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Description'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 40),
                child: Row(
                  children: [
                    Text('Catagory'),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: SizedBox(
                        width: 200,
                        child: TextField(),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 40),
                child: Row(
                  children: [
                    Text('Duration'),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: SizedBox(
                        width: 80,
                        child: TextField(
                          decoration: InputDecoration(hintText: '10'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: SizedBox(
                        width: 80,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Days',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 40),
                    child: Text('Time'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child: SizedBox(
                        width: 90,
                        height: 30,
                        child: MaterialButton(
                          elevation: 0,
                          onPressed: _showTimePicker,
                          color: const Color.fromARGB(255, 229, 229, 229),
                          child: const Text('pick time',
                              style: TextStyle(
                                color: Color.fromARGB(255, 136, 136, 136),
                              )),
                        )),
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 40),
                    child: Text('Notification'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: 150,
                      child: Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                        activeTrackColor:
                            const Color.fromARGB(255, 215, 232, 223),
                        activeColor: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //used to make the button clickable
                        InkWell(
                          child: Container(
                            width: 100,
                            height: 35,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 236, 156, 92),
                                borderRadius: BorderRadius.circular(40)),
                            child: const Center(
                                child: Text(
                              'Back',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                          ),
                          onTap: () => {
                            //poping the recent screen from stack
                            Navigator.pop(context),
                            //routing to the destination page that is the longterm()
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const LongTerm();
                            }))
                          },
                        ),
                        const Padding(
                            padding: EdgeInsets.only(left: 2, right: 2)),
                        InkWell(
                          child: Container(
                            width: 100,
                            height: 35,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 236, 156, 92),
                                borderRadius: BorderRadius.circular(40)),
                            child: const Center(
                                child: Text(
                              'Done',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                          ),
                          onTap: () => {
                            Navigator.pop(context),
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const LongTerm();
                            }))
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
