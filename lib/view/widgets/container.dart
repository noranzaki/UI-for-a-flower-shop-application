import 'package:flutter/material.dart';

Widget customContainer({
  double? w,
  double? h,
  String? text,

}) =>
    Stack(children: [
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Container(
          height: h! * 0.25,
          width: w! * 0.75,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.brown.withOpacity(.5),
                    blurRadius: 15,
                    spreadRadius: 5,
                    offset: const Offset(0, 4)),
              ],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(150),
                topRight: Radius.circular(220),
              ),
              color: const Color(0xFFFACA01)),
        ),
      ),
       Padding(
        padding: const EdgeInsets.only(top: 35, left: 70),
        child: Text(
          text!,
          style: const TextStyle(
              fontSize: 40,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w400,
              fontFamily: "BunchBlossom",
              color: Colors.brown),
        ),
      ),


    ]);
