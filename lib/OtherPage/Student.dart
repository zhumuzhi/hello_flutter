/// Created by ZhuMZ
/// Created on 1/26/21
/// page Student
/// desc       

import 'Person.dart';
import 'SuperMan.dart';
import 'DevilFruit.dart';

class Student extends Person with Superman implements DevilFruit {

  bool get adult => this.age > 15;

  void study(){
    print("Student studying...");
  }

  @override
  void run() {
    // TODO: implement run
    super.run();
  }

  @override
  void rubber() {
    // TODO: implement rubber
  }

  @override
  void shake() {
    // TODO: implement shake
  }

}


void main(){

  Student student = new Student();
  student.study();

  student.name = '张三';
  student.age = 20;

  student.run();

  student.fly();
  student.laserEye();

  student.home = "K.K.";

  print(student.adult);

}
 






      