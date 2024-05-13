import 'package:coffe_corner/core/themeing/my_colors.dart';
import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  String txt;
  MyForm({super.key , required this.txt});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (String? val){
        if(val!.isEmpty){
          return 'Please write something';
        }else{
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: txt,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 2 , color: Colors.red)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 2 , color: AppColors.coffeeDark)
        ),


      ),
    );
  }
}
