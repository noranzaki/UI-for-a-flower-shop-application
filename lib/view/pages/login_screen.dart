import 'package:flutter/material.dart';
import 'package:my_first_project/view/pages/register_screen.dart';
import 'package:my_first_project/view/widgets/button.dart';
import 'package:my_first_project/view/widgets/container.dart';
import 'package:my_first_project/view/widgets/textField.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.orangeAccent,
        body: SafeArea(
            child: Center(
                child: SingleChildScrollView(
                    child: Column(children: [
      Stack(children: [
        customContainer(w:MediaQuery.of(context).size.width, h: MediaQuery.of(context).size.height,text: "Login"),
        Padding(
            padding: const EdgeInsets.only(top: 150, left:60),
            child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 5.0,spreadRadius: 2,offset: Offset(0,6),color: Colors.brown)],
                  color: Color(0xFFA2A603),
                  shape: BoxShape.circle,
                ),
            child:Padding(
               padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  customTextFieldWidget(
                      controller: emailController,
                      type: TextInputType.emailAddress,
                      label: "Email",
                      validator: (value) {
                        if (value.length == 0) {
                          return "Email Can not be empty ";
                        }
                        else if (!RegExp(
                            "^[a-zA-Z0-9+_.-]+@[a-zA-Z-9+_.-]+.[a-z]")
                            .hasMatch(value)) {
                          return " please enter valid email";
                        } else {
                          return null;
                        }
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  customTextFieldWidget(
                      isPassword: true,
                      controller: passwordController,
                      label: "Password",
                      type: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value.length <= 6) {
                          return "password should be return 6";
                        }
                        return null;
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: customButton(inputText: "Login"),
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                ],
              ),
            ),
            ),

        ),
         Padding(
           padding: const EdgeInsets.only(top: 470.0,left: 65.0),
           child: Row(
              children: [
                const Text(" Create new account ?   ",style: TextStyle(fontFamily: "BunchBlossom",color: Colors.brown,fontSize: 20.0,fontWeight: FontWeight.w500),),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      fontFamily: "BunchBlossom",
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.greenAccent),
                  ),
                ),
              ],
            ),
         ),

      ])
    ])))));
  }
}
