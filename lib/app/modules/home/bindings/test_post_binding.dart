import 'package:get/get.dart';
import 'package:retrofit_testing/app/modules/home/controllers/test_post_controller.dart';

import '../controllers/home_controller.dart';
import '../controllers/one_controller.dart';

class TestPostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestPostController>(
      () => TestPostController(),
    );
  }
}
