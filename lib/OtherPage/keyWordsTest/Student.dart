/// Created by ZhuMZ
/// Created on 1/26/21
/// page Student
/// desc       

class DevilFruit {

  String fruitType;

  void rubber(){
    print("橡胶果实...");
  }

  void shake (){
    print("震震果实...");
  }

}

class Mutant {

  String mutantClass;

  void superSpeed () {
    print('超级速度');
  }

  void superPower () {
    print('超级力量');
  }

}


class Person with Mutant implements DevilFruit {

  String fruitType = "超人系";

  @override
  void rubber() {
    // TODO: implement rubber
    print('橡胶果实-橡胶发动');
  }

  @override
  void shake() {
    // TODO: implement shake
    print('震震果实-震动发动');
  }

}


void main(){

  Person person = new Person();
  // 调用混入方法
  person.superSpeed();

  // 调用接口方法
  person.shake();

  print('果实类型:'+ person.fruitType);

}






      