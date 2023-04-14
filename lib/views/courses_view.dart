import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

import '../Animations/ValueChangeAnimation.dart';
import '../Utilities/app_layout.dart';
import '../widgets/carouselSliderWithCustomIndicator.dart';
import '../widgets/creatorsCard.dart';

class CoursesView extends StatefulWidget {
  const CoursesView({super.key});

  @override
  State<CoursesView> createState() => _CoursesViewState();
}

class _CoursesViewState extends State<CoursesView> {
  ColorFilter hai = ColorFilter.mode(Colors.black, BlendMode.color);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: CreatorsCard(),
    
    ));
  }
}


//  Center(
//           child: GestureDetector(
//             onTapUp: (value) {
//               setState(() {
//                 hai = ColorFilter.mode(Color.fromARGB(255, 3, 3, 3), BlendMode.luminosity);
//               });
//             },
//             onTapDown: (value) {
//               print("1");
//               setState(() {
//                 hai = ColorFilter.mode(Colors.transparent, BlendMode.color);
//               });
//             },
//             child: ColorFiltered(
//               child: ImageIcon(
//      AssetImage("assets/images/Feedback/Google_2015_logo.png"),size: 200,
     
// ),
//               colorFilter: hai,
//             ),
//           )),