import 'package:coffe_corner/core/widgets/mybutton.dart';
import 'package:coffe_corner/features/cart/cart_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/themeing/my_colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SvgPicture.asset(
                'assets/Wave.svg',
              ),
              const Padding(
                padding: EdgeInsets.only(top: 35.0),
                child: Center(
                    child: Text(
                  'Cart',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: AppColors.coffeeDark),
                )),
              )
            ],
          ),
          const CartItemWidget(),
          const CartItemWidget(),
          const SizedBox(height: 30,),
          const Text('Payment Details' ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
          Container(
            margin: const EdgeInsets.all(18),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.coffeeLight
            ),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Coffee'),
                    Text("10.0\$")
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ice Coffee x2'),
                    Text("40.0\$")
                  ],
                ),
                Divider(color: Colors.blue,thickness: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    Text('50.00\$',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    
                  ],
                )

              ],
            ),
          ),
          const SizedBox(height: 30,),
          const Text('Payment Methods' ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
          Container(
            margin: const EdgeInsets.all(18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.coffeeLight
            ),
            child: const ListTile(
              title: Text('Cash',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.monetization_on_outlined),
            )
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: MyButton(onPressed: (){}, txt: 'Place Order'),
          )



        ],
      ),
    );
  }
}
