import 'dart:io';
// import 'dart:math';
// import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

enum HFPageRouteType {
  fade,
  rightToLeft,
  leftToRight,
  upToDown,
  downToUp,
  scale,
  rotate,
  size,
  rightToLeftWithFade,
  leftToRightWithFade,
  cupertino,
  none,
}


class HFCustomPageRoute<T> extends PageRoute<T> {

  static bool _defaultPopGesture = Platform.isIOS;
  static HFPageRouteType _defaultTransition = (Platform.isIOS ? HFPageRouteType.cupertino : HFPageRouteType.fade);
  static Duration _defaultDurationTransition = Duration(milliseconds: 400);

  /// 页面Widget.
  final Widget page;

  final bool popGesture;

  final Map<String, String> parameter;

  final String title;

  final HFPageRouteType transition;

  final Curve curve;

  final Alignment alignment;

  ValueNotifier<String> _previousTitle;

  ValueListenable<String> get previousTitle {
    assert(
    _previousTitle != null,
    'Cannot read the previousTitle for a route that has not yet been installed',
    );
    return _previousTitle;
  }

  @override
  final bool maintainState;

  @override
  final bool opaque;

  @override
  final Duration transitionDuration;

  HFCustomPageRoute({
    @required this.page,
    this.title,
    RouteSettings settings,
    this.maintainState = true,
    this.curve = Curves.linear,
    this.alignment,
    this.parameter,
    this.opaque = true,
    this.transitionDuration = const Duration(milliseconds: 400),
    this.popGesture,
    this.transition,
    // this.duration = const Duration(milliseconds: 400),
    bool fullscreenDialog = false,
  })  : assert(page != null),
        assert(maintainState != null),
        assert(fullscreenDialog != null),
  //  assert(opaque),
        super(settings: settings, fullscreenDialog: fullscreenDialog);



  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    // TODO: implement buildPage
    throw UnimplementedError();
  }


  @override
  // TODO: implement barrierColor
  Color get barrierColor => throw UnimplementedError();


  @override
  // TODO: implement barrierLabel
  String get barrierLabel => throw UnimplementedError();


}