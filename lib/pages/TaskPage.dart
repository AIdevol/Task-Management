import 'package:flutter/material.dart';
import 'package:newapp/widgets/TaskBar.dart';
import 'package:newapp/widgets/TaskHere.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            padding: const EdgeInsets.only(left: 10),
            child: Column(children: [
              TaskBar(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(15),
                //decoration: BoxDecoration(color: Colors.white, boxShadow: [
                //BoxShadow(
                //color: Colors.grey.withOpacity(0.3),
                //spreadRadius: 1,
                //blurRadius: 5)
                //]),
                child: Row(children: [
                  Text(
                    "Machine broken help",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(children: [
                  Text("Assignee",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(width: 40),
                  Text("You",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF475269).withOpacity(0.7)))
                ]),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(children: [
                  Text("Status",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(width: 50),
                  Text("In progress",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF475269).withOpacity(0.7)))
                ]),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(children: [
                  Text("Type",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(width: 60),
                  Text("Machine",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF475269).withOpacity(0.7)))
                ]),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(children: [
                  Text("Due",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(width: 60),
                  Text("2 Jan 2023",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF475269).withOpacity(0.7)))
                ]),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(children: [
                  Text("Description",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(width: 10),
                  Text("Machine A broke, help!",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF475269).withOpacity(0.7)))
                ]),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(children: [
                  Text("Attachment",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(width: 50),
                  Icon(Icons.attach_file, size: 20, color: Color(0xFF475269))
                ]),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(children: [
                  Text("Created by",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(width: 50),
                  Text("Person A",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF475269).withOpacity(0.7)))
                ]),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "homePage");
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff4e33e6),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff4e33e6).withOpacity(0.3),
                          blurRadius: 5,
                          spreadRadius: 1),
                    ],
                  ),
                  child: Text('MARK AS DONE',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        letterSpacing: 1,
                      )),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(children: [
                  Text("Progress Timeline",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(width: 50),
                ]),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 55,
                  child: Row(children: [
                    Text("1 Jan 2023",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold)),
                    SizedBox(width: 10),
                    Text("Person A created",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal)),
                  ])),
              TextHere()
            ])));
  }
}
