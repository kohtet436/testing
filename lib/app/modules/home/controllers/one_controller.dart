import 'package:get/get.dart';
import 'package:retrofit_testing/app/data/api/api.dart';
import 'package:dio/dio.dart';
import 'package:retrofit_testing/app/data/models/get_only_one_model.dart';

class OneController extends GetxController {
  //TODO: Implement HomeController
  Rxn<GetOnlyOneModel> onlyOne = Rxn<GetOnlyOneModel>();
  ApiService apiService = ApiService(Dio());
  RxBool _isLoading = false.obs;
  get isLoading => _isLoading.value;
  @override
  void onInit() async {
    _isLoading.value = true;
    onlyOne.value = await apiService.getData();
    _isLoading.value = false;
    super.onInit();
  }
}
