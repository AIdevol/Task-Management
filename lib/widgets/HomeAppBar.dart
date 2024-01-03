import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(25),
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
          Spacer(),
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, "newTask");
              },
              child: Icon(
                Icons.add_circle,
                size: 30,
                color: Color(0xff4e33e6),
              )),
          Spacer(),
          Icon(
            Icons.notifications,
            size: 30,
            color: Color(0xff4e33e6),
          ),
          Spacer(),
          Icon(
            Icons.account_circle_rounded,
            size: 30,
            color: Color(0xff4e33e6),
          ),
          Spacer(),
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, "taskPage");
              },
              child: Icon(
                Icons.logout,
                size: 30,
                color: Color(0xff4e33e6),
              ))
        ]));
  }
}
