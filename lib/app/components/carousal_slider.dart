import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fluxstore_ui/app/theme/app_assets.dart';

class CarousalSliderScreen extends StatelessWidget {
  const CarousalSliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return CarouselSlider(
      items: [
        Image.asset(
          AppImages.verticalimg1,
          fit: BoxFit.cover,
        ),
        Image.asset(
          AppImages.verticalimg2,
          fit: BoxFit.cover,
        ),
        Image.asset(
          AppImages.verticalimg3,
          fit: BoxFit.cover,
        ),
      ],
      options: CarouselOptions(
        height: height * .5,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 400),
        viewportFraction: 1,
      ),
    );
  }
}
