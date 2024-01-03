import 'package:flutter/material.dart';

class NewTaskBar extends StatelessWidget {
  const NewTaskBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Row(children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, size: 30, color: Color(0xff4e33e6)),
          ),
          Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Create New Tasks",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4e33e6)))),
        ]));
  }
}
