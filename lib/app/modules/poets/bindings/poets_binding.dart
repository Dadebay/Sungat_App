import 'package:get/get.dart';

import '../controllers/poets_controller.dart';

class PoetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PoetsController>(
      () => PoetsController(),
    );
  }
}
