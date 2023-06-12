import 'package:flutter_app/consts/consts.dart';
import 'package:flutter_app/views/profile/components/details_card.dart';
import 'package:flutter_app/widget_common/bd_widget.dart';
import 'package:flutter_app/consts/lists.dart';
// import '../../consts/lists.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              //edit
              const Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.edit, color: whiteColor),
              ).onTap(() {}),
              Row(
                children: [
                  Image.asset(profileimg, width: 50, fit: BoxFit.cover)
                      .box
                      .roundedFull
                      .clip(Clip.antiAlias)
                      .make(),
                  10.widthBox,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Adib".text.fontFamily(semibold).white.make(),
                      "Customer@a.com".text.white.make(),
                    ],
                  )),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                      color: whiteColor,
                    )),
                    onPressed: () {},
                    child: "Log Out".text.fontFamily(semibold).white.make(),
                  )
                ],
              ),
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsCard(
                      count: "00",
                      title: "in your cart",
                      width: context.screenWidth / 3.9),
                  detailsCard(
                      count: "00",
                      title: "in your cart",
                      width: context.screenWidth / 3.9),
                  detailsCard(
                      count: "00",
                      title: "in your cart",
                      width: context.screenWidth / 3.9),
                ],
              ),

              40.heightBox,
              ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return const Divider(color: lightGrey);
                },
                itemCount: profileButtonList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      leading: Image.asset(
                        profileButtonIcon[index],
                        width: 22,
                      ),
                      title: profileButtonList[index]
                          .text
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .make());
                },
              )
                  .box
                  .white
                  .rounded
                  .margin(const EdgeInsets.all(12))
                  .padding(const EdgeInsets.symmetric(horizontal: 16))
                  .shadowSm
                  .make()
                  .box
                  .color(redColor)
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
