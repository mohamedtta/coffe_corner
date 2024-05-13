import 'package:flutter/material.dart';

import '../../core/themeing/my_colors.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10 , vertical: 6),
      alignment: Alignment.center,
      height: 100,
      decoration: const BoxDecoration(
          color: AppColors.coffeeLight
      ),
      child: ListTile(
          leading: Image.asset('assets/coffee.png'),
          title: const Text('Coffee'),
          subtitle: const Text("10\$"),
          trailing: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white
            ),
            width: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.coffeeDark
                    ),
                    child: IconButton(onPressed: (){}, icon: const Icon(Icons.add,color: Colors.white,))),
                const Text('1' ,style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.coffeeDark
                    ),
                    child: IconButton(onPressed: (){}, icon: const Icon(Icons.remove,color: Colors.white,))),
              ],
            ),
          )

      ),
    );
  }
}
