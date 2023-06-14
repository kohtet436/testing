import 'package:get/get.dart';
import 'package:retrofit_testing/app/modules/home/controllers/list_controller.dart';

import '../controllers/home_controller.dart';
import '../controllers/one_controller.dart';

class ListDataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListController>(
      () => ListController(),
    );
  }
}
