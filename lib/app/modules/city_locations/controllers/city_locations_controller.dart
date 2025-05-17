import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class CityLocationsController extends GetxController {
  //TODO: Implement CityLocationsController

  final images = <String>[].obs;
  var mapCenter = const LatLng(37.4219983, -122.084).obs;

  @override
  void onInit() {
    super.onInit();

    images.assignAll([
      'assets/images/meeting_room1.jpg',
      'assets/images/meeting_room2.jpg',
      'assets/images/meeting_room3.jpg',
      'assets/images/meeting_room4.jpg',
      'assets/images/meeting_room5.jpg',
    ]);
  }
}
