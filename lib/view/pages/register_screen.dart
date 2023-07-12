import 'package:flutter/material.dart';

import '../widgets/button.dart';
import '../widgets/container.dart';
import '../widgets/textField.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(children:[
                  customContainer(w:MediaQuery.of(context).size.width, h: MediaQuery.of(context).size.height,text: "Register"),
                  Padding(
                    padding: const EdgeInsets.only(top:95.0,left: 15.0,right: 15.0),
                    child: Container(
                      height: 450,
                      width: 450,
                      decoration: const BoxDecoration(
                        boxShadow: [BoxShadow(blurRadius: 5.0,spreadRadius: 2,offset: Offset(0,6),color: Colors.brown)],
                        color: Color(0xFFA2A603),
                        shape: BoxShape.circle,
                      ),
                      child:Padding(
                        padding: const EdgeInsets.only(top: 92.0, left: 40.0, right: 40.0),
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
                            customTextFieldWidget(
                                controller: phoneController,
                                type: TextInputType.phone,
                                label: "Phone Number",
                                validator: (value) {
                                  if (value.length <= 11) {
                                    return "phone should be 11 number";
                                  }
                                  return null;
                                }),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: customButton(inputText: "Register"),
                            ),
                            // const SizedBox(
                            //   height: 20,
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ])
              ],
            ),

          ),
        ),
      ),
    );
  }
}

