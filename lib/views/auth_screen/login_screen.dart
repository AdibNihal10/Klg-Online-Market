import 'package:flutter_app/views/auth_screen/signup_screen.dart';
import 'package:flutter_app/widget_common/applogo_widget.dart';
import 'package:flutter_app/widget_common/bd_widget.dart';
// import 'package:flutter_app/widget_common/applogo_widget.dart';
// import 'package:flutter_app/widget_common/bd_widget.dart';
import 'package:flutter_app/consts/consts.dart';
import 'package:flutter_app/widget_common/custom_textfield.dart';
// import 'package:flutter_app';
import 'package:flutter_app/widget_common/our_button.dart';
import 'package:get/get.dart';
import 'package:flutter_app/HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(children: [
          (context.screenHeight * 0.1).heightBox,
          applogoWidget(),
          10.heightBox,
          "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
          10.heightBox,
          Column(
            children: [
              customTextField(hint: emailHint, title: email),
              customTextField(hint: passwordHint, title: password),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetPass.text.make())),
              5.heightBox,
              // ourButton().box.width(context.screenWidth - 50).make(),
              ourButton(
                      color: purple,
                      title: login,
                      textColor: whiteColor,
                      onPress: () {
                        Get.to(() => const HomeScreen());
                      })
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              5.heightBox,
              createNewAccount.text.color(redColor).make(),
              5.heightBox,

              ourButton(
                  color: yellow,
                  title: signup,
                  textColor: redColor,
                  onPress: () {
                    Get.to(() => const Signup());
                  }).box.width(context.screenWidth - 50).make(),
            ],
          )
              .box
              .white
              .rounded
              .padding(const EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .shadowSm
              .make(),
        ]),
      ),
    ));
  }
}
