/// Created by ZhuMZ
/// Created on 1/28/21
/// page base_controller
/// desc       

import 'package:get/get.dart';

abstract class BasePageController<T> extends GetxController with ShowEmptyView{

  /// 页面数据
  T _data;
  T get pageData => _data;

  void showData(T data) {
    _data = data;
    update();
  }

  @override
  void showEmptyView() {
    super.showEmptyView();
    print("调用混入showEmptyView方法");
  }

}

mixin ShowEmptyView on GetxController {

  void showEmptyView () {
    update();
  }

}

// 泛型构造
class Phone<T> {
  final T name;
  Phone(this.name);
}




      