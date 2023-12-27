import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/widgets/cat_widget.dart';

import '../../Search_bar.dart';
import '../../res/colors.dart';
import '../../res/dimens.dart';
import '../../widgets/AppSlider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          SearchBtn(
            OnTap: () {},
          ),
          AppSlider(
            listImag: [],
          ),
          ////categori
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CatWidgets(
                  onTap: () {},
                  colors: AppColors.catsDesktapColor,
                  iconPath: 'images/svg1/clasic.svg',
                  title: 'رومیزی'),
              CatWidgets(
                  onTap: () {},
                  colors: AppColors.CatsDigitalColocr,
                  iconPath: 'images/svg1/digital.svg',
                  title: 'دیجیتال'),
              CatWidgets(
                  onTap: () {},
                  colors: AppColors.CatsSmartColor,
                  iconPath: 'images/svg1/smart.svg',
                  title: 'هوشمند'),
              CatWidgets(
                  onTap: () {},
                  colors: AppColors.CatsClasicColor,
                  iconPath: 'images/svg1/clasic.svg',
                  title: 'کلاسیک'),
            ],
          ),
          //SizedBox(height:20 ,),
          Dimens.lage.height,
          SingleChildScrollView(
            reverse: true,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 310,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        height: 290,
                        width: 200,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimens.medium),
                            gradient: LinearGradient(
                                colors: AppColors.ProductBgGradiant,
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("images/png/unnamed.png"),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "ساعت مردانه  ونوس",
                                      style: LightAppTextStyle.title,
                                    )),
                                Dimens.lage.height,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "${635000.SpaceWithComa}" + "تومان ",
                                          style: LightAppTextStyle.title,
                                        ),
                                        Text(
                                          "${220000.SpaceWithComa}" + "تومان ",
                                          style: LightAppTextStyle.titlPrc,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      // height: 30,
                                      // width: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        color: Colors.red,
                                      ),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: const EdgeInsets.all(
                                                Dimens.small * .5),
                                            child: Text("20 %"),
                                          )),
                                    ),
                                  ],
                                ),
                                Dimens.lage.height,
                                Container(
                                  height: 2,
                                  width: double.infinity,
                                  color: Colors.blue,
                                ),
                                Dimens.small.height,
                                Text(
                                  "10:22:06",
                                  style: LightAppTextStyle.timeTxt,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const TextVertical(),
              ],
            ),
          ),
        ],
      ),
    )));
  }
}

class TextVertical extends StatelessWidget {
  const TextVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: -1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Transform.rotate(
                    angle: 1.5,
                    child: SvgPicture.asset("images/svg1/back.svg")),
                const Text(
                  "مشاهده همه",
                  style: LightAppTextStyle.title,
                )
              ],
            ),
            const Text(
              "شگقت انگیز ",
              style: LightAppTextStyle.title,
            ),
          ],
        ),
      ),
    );
  }
}
