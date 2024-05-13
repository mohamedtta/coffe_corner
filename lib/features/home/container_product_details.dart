import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/themeing/my_colors.dart';

class ContainerProductDetails extends StatelessWidget {
  const ContainerProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18 , vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.coffeeLight
      ),
      child: ListTile(
        title: const Text('ice Coffee'),
        subtitle: const Text('coffee, sugar' , style: TextStyle(color: AppColors.coffeeDark , fontWeight: FontWeight.bold),),
        leading: Image.asset('assets/product.png'),
        trailing: Column(
          children: [
            const Text("\$18" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 16),),
            SvgPicture.asset('assets/cart.svg')
          ],
        ),
      ),
    );
  }
}
