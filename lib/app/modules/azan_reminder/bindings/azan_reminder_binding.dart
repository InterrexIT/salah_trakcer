import 'package:get/get.dart';

import '../controllers/azan_reminder_controller.dart';

class AzanReminderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AzanReminderController>(
      () => AzanReminderController(),
    );
  }
}
