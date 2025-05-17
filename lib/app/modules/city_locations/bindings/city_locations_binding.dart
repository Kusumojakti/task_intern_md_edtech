import 'package:get/get.dart';

import '../controllers/city_locations_controller.dart';

class CityLocationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CityLocationsController>(
      () => CityLocationsController(),
    );
  }
}
