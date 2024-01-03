import 'package:flutter/material.dart';

class DropDownBar extends StatefulWidget {
  const DropDownBar({Key? key}) : super(key: key);

  @override
  State<DropDownBar> createState() => _DropDownBarState();
}

class _DropDownBarState extends State<DropDownBar> {
  String dropdownValue = 'Dog';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(children: [
        Icon(Icons.sort, size: 30, color: Color(0xff4e33e6)),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: Text("Tasks",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4e33e6))),
        ),
      ]),
    ));
  }
}
