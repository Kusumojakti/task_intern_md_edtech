import 'package:get/get.dart';

class ParentTabController extends GetxController {
  //TODO: Implement ParentTabController
  final args = Get.arguments;

  final index = 0.obs;

  setIndex(int number) async {
    index.value = number;
    update();
  }
}
