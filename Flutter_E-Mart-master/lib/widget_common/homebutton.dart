import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget Homebutton(width, height, icon, String? title) {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Image.asset(icon, width: 26),
    5.heightBox,
    title!.text.fontFamily(semibold).color(darkFontGrey).make()
  ]).box.size(width, height).rounded.white.make();
}
