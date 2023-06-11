// import 'package:flutter/material.dart';
// import 'package:flutter_app/Login-page.dart';
// import 'package:flutter_app/consts/colors.dart';
import 'package:flutter_app/consts/consts.dart';
import 'package:flutter_app/views/auth_screen/login_screen.dart';
import 'package:flutter_app/widget_common/applogo_widget.dart';
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
          child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Image.asset(icSplashBg, width: 300)),
          20.heightBox,
          applogoWidget(),
          10.heightBox,
        ],
      )),
    );
  }
}
