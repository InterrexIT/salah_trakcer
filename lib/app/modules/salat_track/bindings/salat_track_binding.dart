import 'package:get/get.dart';

import '../controllers/salat_track_controller.dart';

class SalatTrackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SalatTrackController>(
      () => SalatTrackController(),
    );
  }
}
