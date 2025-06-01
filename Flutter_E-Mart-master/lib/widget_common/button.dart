import 'package:emart_app/consts/consts.dart';

import 'package:flutter/material.dart';

Widget button(onPress, color, textColor, String? title) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color, padding: const EdgeInsets.all(16)),
      onPressed: onPress,
      child: title!.text.color(textColor).fontFamily(bold).make());
}
