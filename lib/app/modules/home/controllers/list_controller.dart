import 'package:get/get.dart';
import 'package:retrofit_testing/app/data/api/api.dart';
import 'package:dio/dio.dart';
import 'package:retrofit_testing/app/data/models/get_only_one_model.dart';

class ListController extends GetxController {
  //TODO: Implement HomeController
  Rxn<List<GetOnlyOneModel>> onlyOne = Rxn<List<GetOnlyOneModel>>();
  ApiService apiService = ApiService(Dio());
  RxBool _isLoading = false.obs;
  get isLoading => _isLoading.value;
  @override
  void onInit() async {
    _isLoading.value = true;
    onlyOne.value = await apiService.getListData();
    _isLoading.value = false;
    super.onInit();
  }
}
