// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

CarouselSlider myCarouselSlider() {
  return CarouselSlider(
    options: CarouselOptions(
      enableInfiniteScroll: false,
    ),
    items: [
      myHeaderNetworkImage('assets/SliderAssets/unsplash_WQJvWU_HZFo.png'),
      myHeaderNetworkImage('assets/SliderAssets/unsplash_T1Yvmf4oleQ.png'),
    ],
  );
}

Padding myHeaderNetworkImage(String myImage) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: const BorderRadius.all(Radius.circular(18)),
        image: DecorationImage(
          image: AssetImage(myImage),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
