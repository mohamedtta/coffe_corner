import 'package:flutter/material.dart';
import '../../core/themeing/my_colors.dart';

class CarsLocationConatiner extends StatelessWidget {
  const CarsLocationConatiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 6) ,
      margin: const EdgeInsets.symmetric(horizontal: 18 , vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.coffeeLight
      ),
      child: Row(
        children: [
          Image.asset('assets/man_location.png'),
          const SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Mohamed' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),),
              TextButton(
                style: TextButton.styleFrom( padding: const EdgeInsets.only(top: 5), tapTargetSize: MaterialTapTargetSize.shrinkWrap,minimumSize: const Size(0, 0),),
                  onPressed: (){

                  },
                  child: const Text('see menu' , style: TextStyle(decorationColor: Colors.black,color: Colors.black,decoration: TextDecoration.underline),)),
              TextButton(
                  style: TextButton.styleFrom( padding: EdgeInsets.only(top: 5), tapTargetSize: MaterialTapTargetSize.shrinkWrap,minimumSize: const Size(0, 0),),
                  onPressed: (){

                  },
                  child: const Text('Location in map' , style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,decorationColor: AppColors.coffeeDark,color: AppColors.coffeeDark,decoration: TextDecoration.underline),)),


            ],
          )
        ],
      )
    );
  }
}
