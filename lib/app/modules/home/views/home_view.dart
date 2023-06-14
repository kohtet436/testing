import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:retrofit_testing/app/data/api/api.dart';
import 'package:retrofit_testing/app/modules/home/views/get_a_resource.dart';
import 'package:retrofit_testing/app/routes/app_pages.dart';
// import 'package:retrofit_testing/app/data/api/new_api.dart';
// import 'package:retrofit_testing/app/data/models/new_model.dart';
import '../controllers/home_controller.dart';
import 'package:dio/dio.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.ONE);
                },
                child: const Text("Get Post id 1")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.TWO);
                },
                child: const Text("Get All Posts")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.THREE);
                },
                child: const Text("Post Method")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.FOUR);
                },
                child: const Text("Put Method")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.FIVE);
                },
                child: const Text("Patch Method")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.SIX);
                },
                child: const Text("Data With Query")),
            ElevatedButton(
                onPressed: () {
                  ApiService(Dio()).testDelete();
                },
                child: const Text("Test Delete")),
          ],
        ),
      ),
    );
  }
}
