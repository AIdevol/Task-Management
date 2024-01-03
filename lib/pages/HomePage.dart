import 'package:flutter/material.dart';
import 'package:newapp/widgets/AllItemsWidget.dart';
import 'package:newapp/widgets/CategoriesWidget.dart';
import 'package:newapp/widgets/HomeAppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Column(children: [
        HomeAppBar(),
        SizedBox(height: 15),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 55,
          decoration: BoxDecoration(
            color: Color(0xFFF5F9FD),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF475269).withOpacity(0.3),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Row(children: [
            Container(
              width: 250,
              child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Search")),
            ),
            Spacer(),
            Icon(Icons.search, size: 20, color: Color(0xFF475269))
          ]),
        ),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Text("Categories",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4C53A5))),
        ),
        CategoriesWidget(),
        SizedBox(height: 30),
        AllItemsWidget(),
      ])),
    ));
  }
}
