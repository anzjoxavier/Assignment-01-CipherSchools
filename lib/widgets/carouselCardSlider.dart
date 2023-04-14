import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants/carouselCard.dart';

class CarouselCardSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: const [
        //1st Image of Slider
        PictureCarouselCard(
          heading: 'Earn CipherPoints',
          picturePath: 'assets/images/Cipherschools_icon.png',
          subHeading:
              'Earn exclusive rewards by developing your skills with us!',
        ),

        //2nd Image of Slider
        IconCarouselCard(
          heading: 'Q-rated Content', 
          subHeading: 'Unlock quality content with our Q-rated content!', 
          icon: CupertinoIcons.rosette,),

        //3rd Image of Slider
        IconCarouselCard(
          heading: 'Projects', 
          subHeading: 'Get the hands-on experience with real-time projects guided by expert mentors!', 
          icon: CupertinoIcons.chart_bar_square,),

        //4th Image of Slider
        IconCarouselCard(
        heading: 'Mentors', 
        subHeading: 'Start learning from the mentors coming from giant corporations like Microsoft, Google, Amazon, Paypal, etc!', 
        icon: CupertinoIcons.person_2_square_stack,),
      ],

      //Slider Container properties
      options: CarouselOptions(
          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
          pauseAutoPlayOnTouch: false,
          height: AppLayout.getHeight(180),
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 1 / 1,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.5,
          enlargeFactor: 0.4),
    );
  }
}
