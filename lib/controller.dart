import 'package:get/state_manager.dart';
import 'package:getx_practice/model.dart';

class Controller extends GetxController {
  /*
  1.obx:  listen 가능한 observable(obx) initialize가 필요함.
  2.GetX : obs 변화를 listen 함, 자체적으로 controller instance initialize 가능, obx에 비해 다양한 기능을 가지고있음.
  3.GetBuilder : obs를 listen하지 않음, update메소드를 통해 수동으로 ui를 리빌드해야함.자체적으로 contorller instance initialize 가능.
  */

  final person = Person().obs;

  void updateInfo() {
    person.update((val) {
      val?.age++;
      val?.name = 'ojjo';
    });
  }
}
