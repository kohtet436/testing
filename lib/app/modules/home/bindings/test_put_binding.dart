import 'package:get/get.dart';
import 'package:retrofit_testing/app/modules/home/controllers/test_post_controller.dart';

import '../controllers/home_controller.dart';
import '../controllers/one_controller.dart';
import '../controllers/text_put_controller.dart';

class TestPutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestPutController>(
      () => TestPutController(),
    );
  }
}
