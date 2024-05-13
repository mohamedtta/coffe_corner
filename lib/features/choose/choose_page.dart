import 'package:coffe_corner/core/widgets/mybutton.dart';
import 'package:coffe_corner/features/auth/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/themeing/my_colors.dart';

class ChoosePage extends StatefulWidget {
  const ChoosePage({super.key});

  @override
  State<ChoosePage> createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {
  bool? isClient;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SvgPicture.asset('assets/Wave.svg'),
          const Text('Welcome,' ,style: TextStyle(fontSize: 24),),
          Text('COFFEE CORNER', style: GoogleFonts.pacifico(textStyle: const TextStyle(fontSize: 24 , color:AppColors.coffeeDark )),),
          const SizedBox(height: 60,),
          Text('You are a' ,style: GoogleFonts.poppins(textStyle: const TextStyle(fontWeight: FontWeight.bold , fontSize: 36)),),
          const SizedBox(height: 60,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      isClient = true;
                      setState(() {

                      });
                    },
                      child: Container(
                          decoration: isClient == true ? BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 3 , color: Colors.blue)
                          ) : null,
                          child: Image.asset('assets/client.png'))
                  ),
                  const Text('Client', style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.w600),)
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      isClient = false;
                      setState(() {

                      });
                    },
                      child: Container(
                        decoration: isClient == false ? BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 3 , color: Colors.blue)
                        ) : null ,
                          child: Image.asset('assets/owner.png'))
                  ),
                  const Text('Business owner' , style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
                ],
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: MyButton(onPressed: (){
              if(isClient != null){
                Get.off(Login(isClient: isClient!));
              }else{
                Get.defaultDialog(
                  middleText: 'Please choose your role'
                );
              }
            }, txt: "Continue"),
          )





        ],
      ),
    );
  }
}
