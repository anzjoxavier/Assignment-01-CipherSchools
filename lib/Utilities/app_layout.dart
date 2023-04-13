import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double pixels) {
    final x = getScreenHeight()*(pixels/856.7272727272727);
    return x;
  }

  static getWidth(double pixels) {
    final x = getScreenWidth()*(pixels/392.72727272727275);
    return x;
  }
}
