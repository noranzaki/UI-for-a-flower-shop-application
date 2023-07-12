// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

Widget customButton({
  final String? inputText,
}) =>
    ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
      ),
      child: Center(child: Text(inputText!,style:const TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize: 20.0,fontFamily: "BunchBlossom"),),),
    );
