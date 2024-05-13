import 'package:coffe_corner/core/themeing/my_colors.dart';
import 'package:coffe_corner/features/auth/login/login.dart';
import 'package:coffe_corner/features/choose/choose_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3) , (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ChoosePage()));

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/splash_background.png')
          ),
        ),
        child:  Center(
          child: Text('Coffee Corner' ,style: GoogleFonts.pacifico(textStyle: const TextStyle(color: AppColors.coffeeDark , fontSize: 48),),),
        ),
      ),
    );
  }
}
