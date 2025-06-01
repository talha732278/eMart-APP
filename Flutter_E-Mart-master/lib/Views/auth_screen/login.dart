import 'package:emart_app/Views/auth_screen/Sign_Up.dart';

import 'package:emart_app/widget_common/bg_widget.dart';
import 'package:emart_app/widget_common/button.dart';
import 'package:emart_app/widget_common/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:emart_app/widget_common/applogo.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/Views/home_screen/home.dart';

class login_screen extends StatelessWidget {
  login_screen({Key? key}) : super(key: key);

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
            "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                customtextfield(email, emailhint),
                customtextfield(password, passwordhint),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetpass.text.make()),
                ),
                5.heightBox,
                button(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const homescreen.Home()),
                  );
                }, redColor, whiteColor, login)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                5.heightBox,
                createnewaccount.text.color(fontGrey).make(),
                5.heightBox,
                button(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const sign_up()),
                  );
                }, golden, whiteColor, Signup)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                loginwith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: lightGrey,
                              radius: 25,
                              child: Image.asset(
                                socialIconList[index],
                                width: 30,
                              ),
                            ),
                          )),
                )
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .make(),
          ],
        ),
      ),
    ));
  }
}
