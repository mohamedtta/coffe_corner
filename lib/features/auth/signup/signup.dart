import 'package:coffe_corner/core/themeing/my_colors.dart';
import 'package:coffe_corner/core/widgets/mybutton.dart';
import 'package:coffe_corner/features/auth/login/login.dart';
import 'package:coffe_corner/features/auth/login/my_login_forms.dart';
import 'package:coffe_corner/features/auth/signup/my_signup_forms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> gk = GlobalKey();
    return Scaffold(
      body: Column(
        children: [
          SvgPicture.asset('assets/Wave.svg'),
          const Text('Welcome,' ,style: TextStyle(fontSize: 24),),
          Text('COFFEE CORNER', style: GoogleFonts.pacifico(textStyle: const TextStyle(fontSize: 24 , color:AppColors.coffeeDark )),),
          const SizedBox(height: 30,),
          const Text('put your information to sign up' ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
          Form(
            key: gk,
              child: const MySignUpForms()),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: MyButton(onPressed: (){
              if(gk.currentState!.validate()){

              }
            }, txt: 'Sign up'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: Center(
                child: Text.rich(
                    TextSpan(
                        children: [
                          const TextSpan(text: "if you already have account "),
                          TextSpan(
                              text: 'Login',
                              style: const TextStyle(fontWeight: FontWeight.bold , color: Colors.blue , decoration: TextDecoration.underline,decorationColor: Colors.blue),
                              recognizer: TapGestureRecognizer()..onTap = (){
                                Get.off(Login());
                              }

                          ),
                        ]
                    )
                )
            ),
          )
        ],
      ),

    );
  }
}
