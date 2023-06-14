import 'package:get/get.dart';
import 'package:retrofit_testing/app/modules/home/views/get_a_resource.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/bindings/list_data_binding.dart';
import '../modules/home/bindings/one_binding.dart';
import '../modules/home/bindings/test_patch_binding.dart';
import '../modules/home/bindings/test_post_binding.dart';
import '../modules/home/bindings/test_put_binding.dart';
import '../modules/home/bindings/test_query_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/list_data.dart';
import '../modules/home/views/test_patch_view.dart';
import '../modules/home/views/test_post_view.dart';
import '../modules/home/views/test_put_view.dart';
import '../modules/home/views/test_query_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONE,
      page: () => ONE(),
      binding: OneBinding(),
    ),
    GetPage(
      name: _Paths.TWO,
      page: () => ListData(),
      binding: ListDataBinding(),
    ),
    GetPage(
      name: _Paths.THREE,
      page: () => TestPostView(),
      binding: TestPostBinding(),
    ),
    GetPage(
      name: _Paths.FOUR,
      page: () => TestPutView(),
      binding: TestPutBinding(),
    ),
    GetPage(
      name: _Paths.FIVE,
      page: () => TestPatchView(),
      binding: TestPatchBinding(),
    ),
    GetPage(
      name: _Paths.SIX,
      page: () => TestQueryView(),
      binding: TestQueryBinding(),
    ),
  ];
}
