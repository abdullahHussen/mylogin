import 'package:flutter/material.dart';

class MyTextFromFiled extends StatelessWidget
{
  final TextEditingController Controller;
  final bool Obscure;
  final String Label;
  const MyTextFromFiled({
  required this.Controller,required this.Label,this.Obscure=false
  ,super.key
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return TextFormField(
       controller:Controller ,
      obscureText:Obscure ,
      decoration: InputDecoration(
        labelText:Label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}