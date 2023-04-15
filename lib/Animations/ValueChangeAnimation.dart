import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IntegerIncreaseWidget extends StatefulWidget {
  const IntegerIncreaseWidget(
      {super.key,
      required this.start,
      required this.end,
      required this.endHeader,
      required this.subHeading});
  final int? start;
  final int? end;
  final String endHeader;
  final String subHeading;
  @override
  State<IntegerIncreaseWidget> createState() => _IntegerIncreaseWidgetState();
}

class _IntegerIncreaseWidgetState extends State<IntegerIncreaseWidget>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        duration: const Duration(seconds: 4),
        vsync: this,
        animationBehavior: AnimationBehavior.normal);
    animation = IntTween(begin: widget.start, end: widget.end).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeOut));
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return Container(
          padding: EdgeInsets.all(AppLayout.getHeight(10)),
          width: AppLayout.getWidth(180),
          height: AppLayout.getHeight(120),
          // decoration: const BoxDecoration(color: Colors.green),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  animation.value.toString() + widget.endHeader,
                  style: AppStyles.animatedTextHeader,
                ),
                SizedBox(
                  height: AppLayout.getHeight(10),
                ),
                Text(
                  widget.subHeading,
                  style: AppStyles.animatedTextSubHeader,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
