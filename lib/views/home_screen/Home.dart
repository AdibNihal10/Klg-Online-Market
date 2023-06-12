import 'package:flutter_app/views/category_screen/category_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_app/Contollers/Home_controller.dart';
import 'package:flutter_app/consts/consts.dart';
import 'package:flutter_app/views/home_screen/Home_screen.dart';
// import 'package:flutter_app/views/cart/cart_screen.dart';
import 'package:flutter_app/views/profile/profile_screen.dart';
import '../cart/cart_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //init home controller
    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 26), label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 26), label: account),
    ];

    var navBody = [
      // Container(color: Colors.blue),
      // Container(color: Colors.amber),
      // Container(color: Colors.purple),
      // Container(color: Colors.cyan),
      const HomeScreen(),

      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            currentIndex: controller.currentNavIndex.value,
            selectedItemColor: redColor,
            selectedLabelStyle: const TextStyle(fontFamily: semibold),
            type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            items: navbarItem,
            onTap: (value) {
              controller.currentNavIndex.value = value;
            }),
      ),
    );
  }
}
