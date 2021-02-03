/// Created by ZhuMZ
/// Created on 1/28/21
/// page Animal
/// desc       

abstract class Animal {
    String name;

    void eat();
    void run();
}

class Dog extends Animal {

  @override
  void eat() {
    // TODO: implement eat
    print('Name is $this.name;');
  }

  @override
  void run() {
    // TODO: implement run
  }

}

class Cat implements Animal {

  @override
  set name(String _name) {
    // TODO: implement name
  }
  
  @override
  // TODO: implement name
  String get name => throw UnimplementedError();

  @override
  void eat() {
    // TODO: implement eat
  }

  @override
  void run() {
    // TODO: implement run
  }

}





      