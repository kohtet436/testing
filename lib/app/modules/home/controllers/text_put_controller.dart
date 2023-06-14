import 'package:get/get.dart';
import 'package:retrofit_testing/app/data/models/test_post_model.dart';
import 'package:dio/dio.dart';
import '../../../data/api/api.dart';
import '../../../data/models/test_post_response.dart';

class TestPutController extends GetxController {
  //TODO: Implement HomeController
  Rxn<TestPostModel> testPut = Rxn<TestPostModel>();
  // Rxn<TestPostResponseModel> testPostResponse = Rxn<TestPostResponseModel>();
  RxBool _isLoading = false.obs;
  get isLoading => _isLoading.value;
  ApiService apiService = ApiService(Dio());
  @override
  void onInit() async {
    _isLoading.value = true;
    testPut.value = await apiService.testPut(1, 1, "foo", "bar");
    _isLoading.value = false;
    super.onInit();
  }
}
