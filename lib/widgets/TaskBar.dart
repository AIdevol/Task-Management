import 'package:flutter/material.dart';

class TaskBar extends StatelessWidget {
  const TaskBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(25),
        child: Row(children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, size: 30, color: Color(0xff4e33e6)),
          ),
          Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Pending Tasks",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4e33e6)))),
        ]));
  }
}
