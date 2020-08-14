

class Meta{
  double price;
  String name;
  // 成员变量初始化语法糖
  Meta(this.name,  this.price);
// 类的实例变量：1.是声明时定义的，可以用this语法糖赋值；2.是继承来的，不能用this，需要把这个值交给super让父类赋值
}

class Item extends Meta{
  Item(name, price) : super(name, price);
  //重载了+运算符，合并商品为套餐商品
  Item operator+(Item item) =>  Item(name + item.name, price + item.price);
}

abstract class PrintHelper {
  printInfo() => print(getInfo());
  getInfo();
}

class ShoppingCart extends Meta with PrintHelper{
  DateTime date;
  String code;
  List<Item> bookings;

  // 默认初始化函数，转发至withCode函数
  ShoppingCart({name}) : this.withCode(name: name, code:null);
  // withCode初始化方法，使用语法糖和初始化列表进行赋值，并调用父类初始化方法
  ShoppingCart.withCode({name, this.code}) :date = DateTime.now(), super(name, 0);

  // 以归纳合并方式求和
  double get price => bookings.reduce((value, element) => value + element).price;

  getInfo() => '''
    购物车信息:
    ---------------------------------
    用户名：$name
    优惠码：${code??"没有"}
    总价：$price
    Date：$date    
    ''';
}

// 扩展 商品数量属性；购物车信息增加商品列表信息（包括商品名称，数量及单价）输出，实现小票的基本功能。
