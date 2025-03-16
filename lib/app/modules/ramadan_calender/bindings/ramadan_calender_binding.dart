import 'package:get/get.dart';

import '../controllers/ramadan_calender_controller.dart';

class RamadanCalenderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RamadanCalenderController>(
      () => RamadanCalenderController(),
    );
  }
}
