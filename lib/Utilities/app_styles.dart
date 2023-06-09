import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static Color themeColor = Colors.orange;
  static Color secondaryColor =Color.fromARGB(255, 0, 24, 45);
  static TextStyle titleTextStyle =
       TextStyle(color: Colors.black, fontSize: AppLayout.getHeight(18));
  static TextStyle headerTextStyle =  TextStyle(
      color: Colors.black, fontSize: AppLayout.getHeight(35), fontWeight: FontWeight.w700);
  static TextStyle subHeaderTextStyle =  TextStyle(
      color: Colors.black, fontSize: AppLayout.getHeight(20), fontWeight: FontWeight.w400);
  static TextStyle animatedTextStyle =  TextStyle(
      color: Colors.orange, fontSize: AppLayout.getHeight(20), fontWeight: FontWeight.w400);
  static TextStyle mentorAndRatingHeading =
       TextStyle(fontSize: AppLayout.getHeight(27), fontWeight: FontWeight.bold);
  static TextStyle carouselCardHeading = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: AppLayout.getHeight(18));
  static TextStyle carouselCardSubHeading =
      TextStyle(color: Colors.white, fontSize: AppLayout.getHeight(9));
  static TextStyle animatedTextHeader = TextStyle(
      color: Colors.orange,
      fontSize: AppLayout.getHeight(24),
      fontWeight: FontWeight.bold);
  static TextStyle animatedTextSubHeader = TextStyle(
    color: Colors.black,
    fontSize: AppLayout.getHeight(16),
    fontWeight: FontWeight.w400,
  );
  static TextStyle headerForBigSquare = TextStyle(
      color: Colors.white,
      fontSize: AppLayout.getHeight(27),
      fontWeight: FontWeight.bold);
  static TextStyle subHeaderForBigSquare = TextStyle(
    color: Colors.white,
    fontSize: AppLayout.getHeight(18),
    fontWeight: FontWeight.w300,
  );
  static TextStyle headerForGridCard =  TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: AppLayout.getHeight(14));
  static TextStyle subHeaderForGridCard =  TextStyle(
    fontSize: AppLayout.getHeight(12),
    fontWeight: FontWeight.w300);
}
