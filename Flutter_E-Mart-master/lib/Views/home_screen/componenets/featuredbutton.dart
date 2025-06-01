import 'package:flutter/material.dart';
import 'package:emart_app/consts/consts.dart';

Widget featuredbutton(String? title, icon) {
  return Row(
    children: [
      Image.asset(icon, width: 60, fit: BoxFit.fill),
      10.widthBox,
      title!.text.fontFamily(semibold).make(),
    ],
  )
      .box
      .width(220)
      .margin(const EdgeInsets.symmetric(horizontal: 4))
      .padding(const EdgeInsets.all(8))
      .white
      .rounded
      .outerShadowSm
      .make();
}
