import 'package:flutter/material.dart';

class SizeConfigs {
  static late double screenWidth;
  static late double screenHeight;
  static late double blockSizeWidth;
  static late double blockSizeHeight;

  static void init(BuildContext context) {
    final mq = MediaQuery.of(context);
    final padding = mq.padding;

    screenWidth = mq.size.width - padding.horizontal;
    screenHeight = mq.size.height - padding.vertical;

    blockSizeWidth = screenWidth / 100;
    blockSizeHeight = screenHeight / 100;
  }

  /// width scaling
  static double ws(double px) {
    final scale = screenWidth / 375; // 375 = base width
    return (px * scale).clamp(px * 0.85, px * 1.12);
  }

  /// height scaling
  static double hs(double px) {
    final scale = screenHeight / 812; // 812 = base height
    return (px * scale).clamp(px * 0.85, px * 1.12);
  }

  /// font scaling
  static double fs(double fontSize) {
    final scale = (screenWidth / 375 + screenHeight / 812) / 2;
    return (fontSize * scale).clamp(fontSize * 0.9, fontSize * 1.13);
  }
}
