import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Animations/ValueChangeAnimation.dart';

class AnimatedInteger extends StatefulWidget {
  const AnimatedInteger({super.key});

  @override
  State<AnimatedInteger> createState() => _AnimatedIntegerState();
}

class _AnimatedIntegerState extends State<AnimatedInteger> {
  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    IntegerIncreaseWidget(
                      start: 0,
                      end: 15,
                      endHeader: "K+",
                      subHeading: "Students",
                    ),
                    IntegerIncreaseWidget(
                      start: 0,
                      end: 10,
                      endHeader: "K+",
                      subHeading: "Certificates delivered",
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    IntegerIncreaseWidget(
                      start: 0,
                      end: 450,
                      endHeader: "K+",
                      subHeading: "Streamed minutes",
                    ),
                    IntegerIncreaseWidget(
                      start: 0,
                      end: 12,
                      endHeader: "TB+",
                      subHeading: "Content streamed in last 60 days",
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    IntegerIncreaseWidget(
                      start: 0,
                      end: 50,
                      endHeader: "+",
                      subHeading: "Creators",
                    ),
                    IntegerIncreaseWidget(
                      start: 0,
                      end: 110,
                      endHeader: "+",
                      subHeading: "Programs available",
                    )
                  ],
                ),
              ],
            );
  }
}