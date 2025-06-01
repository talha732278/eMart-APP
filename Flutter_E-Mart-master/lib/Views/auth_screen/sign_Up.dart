import 'package:emart_app/Views/auth_screen/login.dart';
import 'package:flutter/material.dart';
import 'package:emart_app/widget_common/bg_widget.dart';
import 'package:emart_app/widget_common/button.dart';
import 'package:emart_app/widget_common/custom_textfield.dart';
import 'package:emart_app/widget_common/applogo.dart';
import 'package:emart_app/consts/consts.dart';

class sign_up extends StatefulWidget {
  const sign_up({super.key});

  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  bool? ischeck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Join the $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                customtextfield(name, namehint),
                customtextfield(email, emailhint),
                customtextfield(password, passwordhint),
                customtextfield(retypepassword, passwordhint),
                5.heightBox,
                Row(
                  children: [
                    Checkbox(
                        checkColor: redColor,
                        value: ischeck,
                        onChanged: (newValue) {
                          setState(() {
                            ischeck = newValue;
                          });
                        }),
                    10.widthBox,
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "I agree to the ",
                          style:
                              TextStyle(fontFamily: regular, color: fontGrey)),
                      TextSpan(
                          text: term,
                          style:
                              TextStyle(fontFamily: regular, color: redColor)),
                      TextSpan(
                          text: " & ",
                          style:
                              TextStyle(fontFamily: regular, color: fontGrey)),
                      TextSpan(
                          text: privacy,
                          style:
                              TextStyle(fontFamily: regular, color: redColor)),
                    ])),
                  ],
                ),
                5.heightBox,
                button(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => login_screen()),
                  );
                }, ischeck == true ? redColor : lightGrey, whiteColor, Signup)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .make(),
            10.heightBox,
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: alreadyhaveaccount,
                style: TextStyle(fontFamily: bold, color: fontGrey),
              ),
              TextSpan(
                text: login,
                style: TextStyle(fontFamily: bold, color: redColor),
              )
            ])).onTap(() {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => const sign_up()),
              );
            }),
          ],
        ),
      ),
    ));
  }
}
