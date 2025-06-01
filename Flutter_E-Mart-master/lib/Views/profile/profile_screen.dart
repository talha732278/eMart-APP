import 'package:emart_app/Views/auth_screen/login.dart';
import 'package:emart_app/Views/profile/components/detail_cart.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/widget_common/bg_widget.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: SafeArea(
          child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.edit,
                      color: whiteColor,
                    ),
                  ).onTap(() {}),
                  Row(
                    children: [
                      Image.asset(imgProfile2, width: 100, fit: BoxFit.cover)
                          .box
                          .roundedFull
                          .clip(Clip.antiAlias)
                          .make(),
                      10.heightBox,
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Dummy User".text.white.fontFamily(semibold).make(),
                          5.heightBox,
                          "Customer@example.com"
                              .text
                              .white
                              .fontFamily(semibold)
                              .make(),
                        ],
                      )),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Colors.white)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => login_screen()),
                            );
                          },
                          child: logout.text.fontFamily(semibold).white.make())
                    ],
                  ),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      detailCard(
                          count: "00",
                          title: "In your cart",
                          width: context.screenWidth / 3.4),
                      detailCard(
                          count: "32",
                          title: "In your whishlist",
                          width: context.screenWidth / 3.4),
                      detailCard(
                          count: "675",
                          title: "your orders",
                          width: context.screenWidth / 3.4),
                    ],
                  ),
                  40.heightBox,
                  ListView.separated(
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return const Divider(
                              color: lightGrey,
                            );
                          },
                          itemCount: profilebuttonslist.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              leading: Image.asset(profilebuttonicon[index],
                                  width: 22),
                              title: profilebuttonslist[index]
                                  .text
                                  .color(fontGrey)
                                  .fontFamily(semibold)
                                  .make(),
                            );
                          })
                      .box
                      .white
                      .rounded
                      .padding(
                          const EdgeInsetsGeometry.symmetric(horizontal: 16))
                      .shadowSm
                      .make()
                ],
              ))),
    ));
  }
}
