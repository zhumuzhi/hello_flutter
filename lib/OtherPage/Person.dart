/// Created by ZhuMZ
/// Created on 1/27/21
/// page Person
/// desc       

class Person {

  // 普通属性
  String  name;
  int     age;
  bool get adult => this.age > 18; // 计算是否成年

  void run() {
    print("Person running...");
  }

}
