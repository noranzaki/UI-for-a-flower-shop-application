import 'package:flutter/material.dart';
import 'package:my_first_project/view/pages/login_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.brown,
      ),
      home: SplashScreenView(
        navigateRoute: const LoginScreen(),
        backgroundColor: Colors.orangeAccent,
        duration: 3500,
        imageSize: 250,
        imageSrc: "lib/view/assets/images/sunflower.png",
        text: "FlowerShop",
        textType: TextType.ColorizeAnimationText,
        textStyle: const TextStyle(
         fontSize: 50.0,
        fontFamily: "BunchBlossom",
        backgroundColor: Colors.transparent,
      ))
    );
  }
}
