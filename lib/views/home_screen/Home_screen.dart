import 'package:flutter_app/consts/consts.dart';
import 'package:flutter_app/consts/lists.dart';

import 'package:flutter_app/widget_common/home_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        color: lightGrey,
        width: context.screenHeight,
        height: context.screenHeight,
        child: SafeArea(
            child: Column(
          children: [
            Container(
                alignment: Alignment.center,
                height: 60,
                color: lightGrey,
                child: TextFormField(
                  decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: whiteColor,
                    hintText: searchAnything,
                    hintStyle: TextStyle(color: textfieldGrey),
                  ),
                )),
            VxSwiper.builder(
              aspectRatio: 16 / 9,
              autoPlay: true,
              height: 150,
              enlargeCenterPage: true,
              itemCount: slidersList.length,
              itemBuilder: (context, index) {
                return Container(
                    child: Image.asset(
                  slidersList[index],
                  fit: BoxFit.fitWidth,
                ));
              },
            ),
            10.heightBox,
            Row(
              children: List.generate(2, (index) => homeButtons()),
            )
          ],
        )));
  }
}
