import 'package:coffe_corner/core/themeing/my_colors.dart';
import 'package:coffe_corner/features/menu/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../container_owner_detials.dart';

class OwnerPage extends StatelessWidget {
  const OwnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: Stack(
                  children: [
                    SvgPicture.asset('assets/Wave.svg',),
                    Positioned(
                      bottom: 10,
                      left: 30,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.coffeeLight,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Your location on map',
                                  style: TextStyle(
                                      color: Color.fromRGBO(111, 88, 255, 1),
                                      fontSize: 12,
                                      decoration: TextDecoration.underline , decorationColor: Colors.blue),
                                ),

                                Text('1st elnasr, nasr city, cairo', style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, height: 1),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children:[
                                const Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children:[
                                    Text('Hello, Ahmed', style: TextStyle(fontSize: 18,),),
                                    SizedBox(height: 14),
                                    Text('Good Morning', style: TextStyle(fontSize: 16,),),
                                  ],
                                ),
                                const SizedBox(width: 106),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 26,
                                      height: 25,
                                      decoration: const  BoxDecoration(
                                        color: Color.fromRGBO(178, 147, 120, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(26, 25)),
                                      ),child: const Icon(Icons.email , size: 20,),),
                                    const SizedBox(width: 12),
                                    Container(
                                      width: 26,
                                      height: 25,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(178, 147, 120, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(26, 25)),
                                      ),child: const Icon(Icons.notifications , size: 20,),),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
          
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 6),
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 18 , vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 1 , color: Colors.black)
                ),
                child: const Text('You have 2 request'),
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0 , vertical: 10),
                child: const Text('Coffee Request' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600),),
              ),
              const ContainerOwnerDetails(),
              const ContainerOwnerDetails(),
              ListTile(
                  title: const Text('Your menu' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600),),
                trailing: TextButton(
                  child: const Text('Edit' , style: TextStyle(color: AppColors.coffeeDark , fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
                  onPressed: (){
                    Get.to(const MenuPage());
                  },
                ),
              ),

              Expanded(
                child: ListView(
                  children: const [
                    ContainerOwnerDetails(),
                    ContainerOwnerDetails(),
                    ContainerOwnerDetails(),
                    ContainerOwnerDetails(),
                    ContainerOwnerDetails(),
                    ContainerOwnerDetails(),
                    ContainerOwnerDetails(),
                    ContainerOwnerDetails(),
                  ],
                ),
              )


            ],
          ),
        ));
  }
}
