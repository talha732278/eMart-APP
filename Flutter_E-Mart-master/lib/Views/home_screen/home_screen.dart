import 'package:emart_app/Views/home_screen/componenets/featuredbutton.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/widget_common/homebutton.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
          child: Column(children: [
        Container(
          alignment: Alignment.center,
          height: 60,
          color: lightGrey,
          child: TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none,
              suffixIcon: Icon(Icons.search),
              filled: true,
              fillColor: whiteColor,
              hintText: searchanything,
              hintStyle: TextStyle(color: textfieldGrey),
            ),
          ),
        ),
        10.heightBox,
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(children: [
              VxSwiper.builder(
                aspectRatio: 16 / 9,
                autoPlay: true,
                height: 145,
                itemCount: sliderlist.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    sliderlist[index],
                    fit: BoxFit.fill,
                  )
                      .box
                      .rounded
                      .clip(Clip.antiAlias)
                      .margin(const EdgeInsets.symmetric(horizontal: 8))
                      .make();
                },
              ),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  2,
                  (index) => Homebutton(
                      context.screenWidth / 2.5,
                      context.screenHeight * 0.1,
                      index == 0 ? icTodaysDeal : icFlashDeal,
                      index == 0 ? todaydeal : flashsale),
                ),
              ),
              10.heightBox,
              VxSwiper.builder(
                aspectRatio: 16 / 9,
                autoPlay: true,
                height: 145.0,
                itemCount: sliderlist.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    ssliderlist[index],
                    fit: BoxFit.fill,
                  )
                      .box
                      .rounded
                      .clip(Clip.antiAlias)
                      .margin(const EdgeInsets.symmetric(horizontal: 8))
                      .make();
                },
              ),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    3,
                    (index) => Homebutton(
                          context.screenWidth / 4,
                          context.screenHeight * 0.1,
                          index == 0
                              ? icTopCategories
                              : index == 1
                                  ? icBrands
                                  : icTopSeller,
                          index == 0
                              ? topcategories
                              : index == 1
                                  ? brand
                                  : topseller,
                        )),
              ),
              10.heightBox,
              Align(
                  alignment: Alignment.centerLeft,
                  child: featuredcategories.text
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .size(18)
                      .make()),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        3,
                        (index) => Column(
                              children: [
                                featuredbutton(
                                  featuredtitle[index],
                                  featuredlist1[index],
                                ),
                                10.heightBox,
                                featuredbutton(
                                  featuredtitle1[index],
                                  featuredlist2[index],
                                )
                              ],
                            )).toList(),
                  )),
              20.heightBox,
              Container(
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                decoration: const BoxDecoration(color: redColor),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      featuredproduct.text.white
                          .fontFamily(bold)
                          .size(18)
                          .make(),
                      10.heightBox,
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          child: Row(
                              children: List.generate(
                                  6,
                                  (index) => Column(
                                        children: [
                                          Image.asset(imgP1,
                                              width: 150, fit: BoxFit.cover),
                                          10.heightBox,
                                          "laptop"
                                              .text
                                              .white
                                              .fontFamily(semibold)
                                              .color(darkFontGrey)
                                              .make(),
                                          10.heightBox,
                                          "\$600"
                                              .text
                                              .white
                                              .fontFamily(bold)
                                              .size(16)
                                              .make(),
                                        ],
                                      )
                                          .box
                                          .rounded
                                          .margin(const EdgeInsets.symmetric(
                                              horizontal: 4))
                                          .padding(const EdgeInsets.all(8))
                                          .make())))
                    ]),
              ),
              10.heightBox,
              VxSwiper.builder(
                aspectRatio: 16 / 9,
                autoPlay: true,
                height: 145.0,
                itemCount: sliderlist.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    ssliderlist[index],
                    fit: BoxFit.fill,
                  )
                      .box
                      .rounded
                      .clip(Clip.antiAlias)
                      .margin(const EdgeInsets.symmetric(horizontal: 8))
                      .make();
                },
              ),
              20.heightBox,
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      mainAxisExtent: 300),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset(imgP5,
                            height: 200, width: 200, fit: BoxFit.cover),
                        5.heightBox,
                        "laptop"
                            .text
                            .white
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        "\$600".text.red900.fontFamily(bold).size(16).make(),
                      ],
                    ).box.white.rounded.make();
                  }),
            ]),
          ),
        ),
      ])),
    );
  }
}
