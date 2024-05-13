import 'package:coffe_corner/core/themeing/my_colors.dart';
import 'package:coffe_corner/core/widgets/mybutton.dart';
import 'package:coffe_corner/features/auth/login/my_login_forms.dart';
import 'package:coffe_corner/features/auth/signup/signup.dart';
import 'package:coffe_corner/features/choose/choose_page.dart';
import 'package:coffe_corner/features/home/screens/client_page.dart';
import 'package:coffe_corner/features/home/screens/owner_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  bool? isClient;
  Login({super.key, this.isClient});

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
          const Text('put your information to log in' ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
          Form(
            key: gk,
              child: const MyLoginForms()),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: MyButton(onPressed: (){
              if(gk.currentState!.validate()){
                if(isClient == true){
                  Get.off(const ClientPage());
                }else{
                  Get.off(const OwnerPage());
                }
              }
            }, txt: 'Login'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(text: "if you don't have account "),
                      TextSpan(
                        text: 'Sign Up',
                        style: const TextStyle(fontWeight: FontWeight.bold , color: Colors.blue , decoration: TextDecoration.underline,decorationColor: Colors.blue),
                        recognizer: TapGestureRecognizer()..onTap = (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const SignUp()));
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
