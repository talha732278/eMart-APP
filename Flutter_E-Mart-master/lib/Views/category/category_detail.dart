import 'package:emart_app/Views/category/item_detail.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widget_common/bg_widget.dart';
import 'package:flutter/material.dart';

class CategoryDetail extends StatelessWidget {
  String? title;
  CategoryDetail({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(title: title!.text.white.fontFamily(bold).make()),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                    children: List.generate(
                        6,
                        (index) => kidtoys.text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .size(12)
                            .makeCentered()
                            .box
                            .white
                            .rounded
                            .size(120, 60)
                            .margin(const EdgeInsets.symmetric(horizontal: 4))
                            .make()))),
            20.heightBox,
            Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 250),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset(imgP5,
                            height: 150, width: 200, fit: BoxFit.cover),
                        "laptop"
                            .text
                            .white
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        "\$600".text.red900.fontFamily(bold).size(16).make(),
                      ],
                    ).box.white.rounded.make().onTap(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => itemdetail(
                                  title: "Dumy item",
                                )),
                      );
                    });
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
