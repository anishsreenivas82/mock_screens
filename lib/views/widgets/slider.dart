import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderCarousel extends StatefulWidget {
  const SliderCarousel({super.key});

  @override
  State<SliderCarousel> createState() => _SliderCarouselState();
}

class _SliderCarouselState extends State<SliderCarousel> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          // color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // height: 10,
              // width: 10,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                // borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              // color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 200,
        ),
        CarouselSlider(
          options: CarouselOptions(
              height: 20,
              viewportFraction: 0.09,
              enlargeFactor: 0.15,
              // aspectRatio: 5,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.zoom,
              // clipBehavior: Clip.antiAliasWithSaveLaye,
              enableInfiniteScroll: true),
          items: [1, 2, 3, 4, 5, 6, 7, 8].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  height: 10,
                  width: 4,
                  color: Colors.white,
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
