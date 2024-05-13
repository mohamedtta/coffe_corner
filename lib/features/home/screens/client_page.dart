import 'package:coffe_corner/core/themeing/my_colors.dart';
import 'package:coffe_corner/features/cart/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../cars_location_container.dart';
import '../container_product_details.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({super.key});

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
                SvgPicture.asset(
                  'assets/Wave.svg',
                ),
                Positioned(
                  bottom: 0,
                  left: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.coffeeLight,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.88,
                          child: ListTile(
                            title: const Text(
                              'Your location on map',
                              style: TextStyle(
                                  color: Color.fromRGBO(111, 88, 255, 1),
                                  fontSize: 12,
                                  decorationColor: Colors.blue,
                                  decoration: TextDecoration.underline),
                            ),
                            subtitle:
                                const Text('1st elnasr, nasr city, cairo'),
                            trailing: IconButton(
                                onPressed: () {
                                  Get.to(const CartPage());
                                },
                                icon: const Icon(Icons.card_travel)),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.88,
                          child: ListTile(
                            title: const Text(
                              'Hello, Ahmed',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            subtitle: const Text(
                              'Good Morning',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 26,
                                  height: 25,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(178, 147, 120, 1),
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(26, 25)),
                                  ),
                                  child: const Icon(
                                    Icons.email,
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Container(
                                  width: 26,
                                  height: 25,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(178, 147, 120, 1),
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(26, 25)),
                                  ),
                                  child: const Icon(
                                    Icons.notifications,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
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
            margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 1, color: Colors.black)),
            child: const Text('view coffee  cars on map'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
            child: Text(
              'Orders History',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          const ContainerProductDetails(),
          const ContainerProductDetails(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
            child: Text(
              'Around Coffee Cars',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                CarsLocationConatiner(),
                CarsLocationConatiner(),
                CarsLocationConatiner(),
                CarsLocationConatiner(),
                CarsLocationConatiner(),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
