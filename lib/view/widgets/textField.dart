import 'package:flutter/material.dart';

Widget customTextFieldWidget({
  required TextEditingController controller, //done
  required TextInputType type, //done
  String? hint,
  required String label,
  IconData? prefix,
  IconData? suffix,
  Function? onSuffix,
  bool isPassword = false,
  FormFieldValidator? validator,
//  Function? validator,
}) =>
    Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.white,),

      child: TextFormField(
        validator: validator,
        obscureText: isPassword,
        controller: controller,
        keyboardType: type,
        decoration: InputDecoration(
            hintText: hint,
            labelText: label,
            labelStyle: const TextStyle(color: Colors.brown,fontFamily: "BunchBlossom",fontSize: 17.0),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            prefixIcon: Icon(prefix),
            suffixIcon: suffix != null ? Icon(suffix) : IconButton(onPressed: (){onSuffix!();}, icon: Icon(suffix)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),

            ),

        ),

      ),
    );
