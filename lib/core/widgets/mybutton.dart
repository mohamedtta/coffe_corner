import 'package:coffe_corner/core/themeing/my_colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  void Function()? onPressed;
  String txt;
  MyButton({super.key , required this.onPressed , required this.txt});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: double.infinity,
      height: 40,
      color: AppColors.coffeeDark,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      child: Text(txt , style: const TextStyle(color: Colors.white , fontSize: 16 , fontWeight: FontWeight.w600),),
      
    );
  }
}
