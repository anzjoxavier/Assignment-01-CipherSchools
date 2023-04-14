import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Animations/ValueChangeAnimation.dart';
import '../Utilities/app_layout.dart';
import '../widgets/carouselSliderWithCustomIndicator.dart';

class CoursesView extends StatefulWidget {
  const CoursesView({super.key});

  @override
  State<CoursesView> createState() => _CoursesViewState();
}

class _CoursesViewState extends State<CoursesView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: SecondaryThemeCarouselSlider()),
    );
  }
}
