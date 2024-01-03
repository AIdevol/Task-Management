import 'package:flutter/material.dart';
// import 'package:namer_app/widgets/NewTaskBar.dart';
import 'package:newapp/widgets/NewTaskBar.dart';

class NewTask extends StatelessWidget {
  const NewTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(children: [
                NewTaskBar(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Form(
                      //key: formKey,
                      child: Column(children: [
                    SizedBox(height: 20, width: 10),
                    TextFormField(
                        decoration: InputDecoration(labelText: "Name")),
                    SizedBox(height: 20, width: 10),
                    TextFormField(decoration: InputDecoration(labelText: "ID")),
                    SizedBox(height: 20, width: 10),
                    TextFormField(
                        decoration: InputDecoration(labelText: "Department")),
                    SizedBox(height: 20, width: 10),
                    TextFormField(
                        decoration: InputDecoration(
                            labelText: "Issue", border: OutlineInputBorder())),
                    SizedBox(height: 20, width: 10),
                    TextFormField(
                        decoration: InputDecoration(
                            labelText: "Attach image here",
                            border: OutlineInputBorder())),
                    SizedBox(height: 20, width: 10),
                    TextFormField(
                        decoration: InputDecoration(
                            labelText: "Assign to",
                            border: OutlineInputBorder())),
                    SizedBox(height: 30, width: 10),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "homePage");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 55,
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
                        child: Text('Submit',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              letterSpacing: 1,
                            )),
                      ),
                    )
                  ])),
                ),
              ])),
        ));
  }
}
