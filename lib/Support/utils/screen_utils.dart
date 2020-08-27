import 'package:flutter/material.dart';
import 'dart:ui';

class KScreen {
  static MediaQueryData mediaQuery = MediaQueryData.fromWindow(window);
  static double _width = mediaQuery.size.width;
  static double _height = mediaQuery.size.height;
  static double _topBarH = mediaQuery.padding.top;
  static double _botBarH = mediaQuery.padding.bottom;
  static double _pixelRatio = mediaQuery.devicePixelRatio;
  static var _ratio;

  static init(int number) {
    int uiWidth = number is int ? number : 750;
    _ratio = _width / uiWidth;
  }

  static px(number) {
    if (!(_ratio is double || _ratio is int)) {
      KScreen.init(750);
    }
    return number * _ratio;
  }

  static onePx() {
    return 1 / _pixelRatio;
  }

  static width() {
    return _width;
  }

  static height() {
    return _height;
  }

  static padTopH() {
    return _topBarH;
  }

  static padBotH() {
    return _botBarH;
  }
}
