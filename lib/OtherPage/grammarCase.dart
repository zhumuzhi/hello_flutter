/// 类定义

// 普通类
class Point {
  // 类变量-默认值为0
  static num factor = 0;

  // 成员变量
  num x, y;

  // 通过构函数进行成员变量初始化(语法糖，等同于在函数体内：this.x = x; this.y = y;)
  Point(this.x, this.y);

  // 对象方法
  void printInfo() => print('$x, $y');

  // 类函数
  static void printZValue() => print('factor'); //类函数
}

/// 多方法初始化与重定向

// 多种初始化，重定向演示
class RePoint {
  num x, y, z;

  // 初始化成变量变量z
  RePoint(this.x, this.y) : z = 0;

  // 重新定向构造函数
  RePoint.bottom(num x) : this(x, 0);

  void printInfo() => print('($x, $y, $z)');
}

///  继承父类和接口实现

class MatePoint {
  num x = 0, y = 0;

  void printInfo() => print('$x, $y');
}

// Vector继承自Point
class Vector extends MatePoint {
  num z = 0;

  @override
  void printInfo() {
    print('$x,$y,$z'); // 覆写了printInfo实现
    super.printInfo();
  }
//  void printInfo() => print('$x,$y,$z'); // 简化写法
}

class Coordinate implements MatePoint {
  num x = 0, y = 0; // 成员变量需要重新声明
  void printInfo() => print('$x,$y'); // 成员函数需要重新声明实现
}

// 调用演示
void pointClassExample() {
  var p = new Point(100, 200); // new 关键字可以省略
  p.printInfo(); // 输出（100，200）;
  Point.factor = 10;
  Point.printZValue(); // 输出10

  var reP = RePoint.bottom(100);

  print(reP);

  var vector = Vector();
  vector
    ..x = 1
    ..y = 2
    ..z = 3; // 级联运算符，等同于vector.x=1; vector.y=2; vector.z=3;
  vector.printInfo(); //输出（1，2，3）

  var coordinate = Coordinate();
  coordinate
    ..x = 1
    ..y = 2; // 级联运算符，等同于coordinate.x=1; coordinate.y=2;
  coordinate.printInfo(); //输出（1，2）
  print(coordinate is MatePoint);
  print(coordinate is Coordinate);
}

///综合案例

class Meta {
  double price;
  String name;

  // 成员变量初始化语法糖
  Meta(this.name, this.price);
// 类的实例变量：1.是声明时定义的，可以用this语法糖赋值；2.是继承来的，不能用this，需要把这个值交给super让父类赋值
}

class Item extends Meta {
  Item(name, price) : super(name, price);

  //重载了+运算符，合并商品为套餐商品
  Item operator +(Item item) => Item(name + item.name, price + item.price);
}

abstract class PrintHelper {
  printInfo() => print(getInfo());

  getInfo();
}

class ShoppingCart extends Meta with PrintHelper {
  DateTime date;
  String code;
  List<Item> bookings;

  // 默认初始化函数，转发至withCode函数
  ShoppingCart({name}) : this.withCode(name: name, code: null);

  // withCode初始化方法，使用语法糖和初始化列表进行赋值，并调用父类初始化方法
  ShoppingCart.withCode({name, this.code})
      : date = DateTime.now(),
        super(name, 0);

  // 以归纳合并方式求和
  double get price =>
      bookings.reduce((value, element) => value + element).price;

  getInfo() => '''
    购物车信息:
    ---------------------------------
    用户名：$name
    优惠码：${code ?? "没有"}
    总价：$price
    Date：$date    
    ''';
}

// 扩展 商品数量属性；购物车信息增加商品列表信息（包括商品名称，数量及单价）输出，实现小票的基本功能。
