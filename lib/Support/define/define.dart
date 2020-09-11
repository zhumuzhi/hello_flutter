
import 'package:flutter/material.dart';
import 'dart:math';

// 随机颜色
randomColor() {
  return Color.fromARGB(
      255,
      Random.secure().nextInt(255),
      Random.secure().nextInt(255),
      Random.secure().nextInt(255));
}