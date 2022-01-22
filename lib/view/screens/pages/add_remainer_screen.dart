import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AddRemainderScreen extends StatefulWidget {
  const AddRemainderScreen({Key key}) : super(key: key);

  @override
  _AddRemainderScreenState createState() => _AddRemainderScreenState();
}

class _AddRemainderScreenState extends State<AddRemainderScreen> {
  TextEditingController _nameController = TextEditingController();

  TextEditingController _timeController = TextEditingController();

  TextEditingController _notesController = TextEditingController();

  bool morning = false;
  bool afternoon = false;
  bool night = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.deepOrange,
          title: Text('Add Remainder'),
          actions: <Widget>[],
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 20),
              Text(
                'Medicine name',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF073738),
                      blurRadius: 10,
                      offset: Offset(2, 3),
                    ),
                  ],
                ),
                child: TextField(
                  controller: _nameController,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter medicine name',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      )),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'When to take?',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        morning = !morning;
                      });
                    },
                    child: TimeCard(
                      icon: Feather.sunrise,
                      time: 'Morning',
                      isSelected: morning,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        afternoon = !afternoon;
                      });
                    },
                    child: TimeCard(
                      icon: Feather.sun,
                      time: 'Afternoon',
                      isSelected: afternoon,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        night = !night;
                      });
                    },
                    child: TimeCard(
                      icon: Feather.moon,
                      time: 'Night',
                      isSelected: night,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                'Additional notes',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF073738),
                      blurRadius: 10,
                      offset: Offset(2, 3),
                    ),
                  ],
                ),
                child: TextField(
                  controller: _notesController,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  maxLines: 2,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Additional notes...',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: TextButton(
                  onPressed: () {},
                  //padding: EdgeInsets.symmetric(horizontal: 15, vertical: 22),
                  // color: Colors.red,
                  //splashColor: Colors.brown,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Feather.bell,
                        color: Colors.brown,
                        size: 25,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Set Reminder',
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ])));
  }
}

class TimeCard extends StatelessWidget {
  const TimeCard({
    Key key,
    this.icon,
    this.time,
    this.isSelected,
  }) : super(key: key);
  final IconData icon;
  final String time;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.red[100] : Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF073738),
            blurRadius: 10,
            offset: Offset(2, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.brown : Colors.red,
            size: 40,
          ),
          SizedBox(height: 5),
          Text(
            time,
            style: TextStyle(
              color: isSelected ? Colors.brown : Colors.red,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
