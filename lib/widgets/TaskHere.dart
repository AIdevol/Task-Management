import 'package:flutter/material.dart';

class TextHere extends StatelessWidget {
  const TextHere({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(5),
        child: Row(children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            padding: EdgeInsets.symmetric(horizontal: 90),
            height: 50,
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
            child: Row(
              children: [
                Container(
                  width: 60,
                  child: TextFormField(
                      decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "",
                  )),
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(
            Icons.add_circle,
            size: 30,
            color: Color(0xff4e33e6),
          ),
          Spacer(),
          Icon(
            Icons.camera_alt,
            size: 30,
            color: Color(0xff4e33e6),
          ),
          Spacer(),
          Icon(
            Icons.mic_rounded,
            size: 30,
            color: Color(0xff4e33e6),
          ),
        ]));
  }
}
