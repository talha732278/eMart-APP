import 'package:emart_app/Controller/home_controller.dart';
import 'package:emart_app/Views/cart/cart_screen.dart';
import 'package:emart_app/Views/category/category_screen.dart';
import 'package:emart_app/Views/home_screen/home_screen.dart';
import 'package:emart_app/Views/profile/profile_screen.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homescreen extends StatelessWidget {
  const homescreen.Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navbaritem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: Category),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account),
    ];

    var navbody = [
      const HomeScreen(),
      const category(),
      const CartScreen(),
      const profile(),
    ];
    return Scaffold(
        body: Column(children: [
          Obx(() =>
              Expanded(child: navbody.elementAt(controller.currentIndex.value)))
        ]),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
              currentIndex: controller.currentIndex.value,
              selectedItemColor: redColor,
              selectedLabelStyle: const TextStyle(fontFamily: semibold),
              type: BottomNavigationBarType.fixed,
              backgroundColor: whiteColor,
              items: navbaritem,
              onTap: (value) {
                controller.currentIndex.value = value;
              }),
        ));
  }
}
