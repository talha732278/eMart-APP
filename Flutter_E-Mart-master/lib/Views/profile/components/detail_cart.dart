import 'package:emart_app/consts/consts.dart';
import 'package:flutter/widgets.dart';

Widget detailCard({width, String? count, String? title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      "00".text.fontFamily(bold).color(darkFontGrey).size(16).make(),
      5.heightBox,
      "in your cart".text.color(darkFontGrey).make(),
    ],
  )
      .box
      .white
      .rounded
      .width(width)
      .padding(const EdgeInsetsGeometry.all(4))
      .height(80)
      .make();
}
