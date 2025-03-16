import 'package:get/get.dart';

import '../controllers/dua_collection_controller.dart';

class DuaCollectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DuaCollectionController>(
      () => DuaCollectionController(),
    );
  }
}
