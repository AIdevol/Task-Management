import 'package:flutter/material.dart';

class AllItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 5; i++)
          Container(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Color(0XFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF475269).withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1)
                  ]),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "taskPage");
                    },
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Pending Tasks',
                          style: TextStyle(
                              color: Color(0xff4e33e6),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Date: 1 January 2023',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF475269).withOpacity(0.7)),
                    ),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Machine broken help',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ))
      ],
    );
  }
}
