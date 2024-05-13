import 'package:flutter/material.dart';

import '../../core/themeing/my_colors.dart';

class ContainerOwnerDetails extends StatelessWidget {
  const ContainerOwnerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18 , vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.coffeeLight
      ),
      child: ListTile(
        title: const Text('Mohamed Ahmed'),
        subtitle: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('1 coffee with milk' , style: TextStyle(color: AppColors.coffeeDark , fontWeight: FontWeight.bold),),
            Text("\$10" , style: TextStyle(color: AppColors.coffeeDark , fontWeight: FontWeight.bold),),
          ],
        ),
        leading: Image.asset('assets/client.png'),
      ),
    );
  }
}
