import 'package:coffe_corner/features/home/container_product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/themeing/my_colors.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: Stack(
              children: [
                SvgPicture.asset(
                  'assets/Wave.svg',
                ),
                Positioned(
                  bottom: 40,
                  left: 30,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    width: 312,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.coffeeLight,
                    ),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Car location on map',
                          style: TextStyle(
                              color: Color.fromRGBO(111, 88, 255, 1),
                              fontSize: 12,
                              decorationColor: Colors.blue,
                              decoration: TextDecoration.underline),
                        ),
                        SizedBox(height: 7),
                        Text(
                          '1st elnasr, nasr city, cairo',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "Welcome at Ahmed's Car",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Text('Our menu' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600),),
          Expanded(
            child: ListView(
              children: const [
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
                ContainerProductDetails(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
