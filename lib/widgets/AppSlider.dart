import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:watch_store/res/dimens.dart';

final List<String> listImag = [
  "https://dkstatics-public.digikala.com/digikala-products/ebb4c6a38e1fd04f0bf6d9d09b58c7960f76cfa5_1603226617.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80",
  "https://dkstatics-public.digikala.com/digikala-products/fedb2937d51f9e098318c04db584f5107166fb5c_1618313105.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80",
  "https://dkstatics-public.digikala.com/digikala-products/3cc8ed2ca6029b2c075af1aaa45951867bc2faff_1669208121.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80",
  "https://dkstatics-public.digikala.com/digikala-products/3c805e6a1eb15d4f53a047b151128a6d409f50f7_1665554483.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80",
];

class AppSlider extends StatefulWidget {
  final List<String> listImag;
  const AppSlider({required this.listImag});

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  final CarouselController _carouselController = CarouselController();

  final List<Widget> items = listImag
      .map(
        (e) => Padding(
          padding: EdgeInsets.all(
            Dimens.medium,
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                e,
                fit: BoxFit.cover,
              )),
        ),
      )
      .toList();

  int _cuurent = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Column(
        children: [
          CarouselSlider(
            items: items,
            options: CarouselOptions(
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _cuurent = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: listImag
                .asMap()
                .entries
                .map((e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () => _carouselController.animateToPage(e.key),
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                              color: _cuurent == e.key
                                  ? Colors.black
                                  : Colors.grey,
                              shape: BoxShape.circle),
                        ),
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
