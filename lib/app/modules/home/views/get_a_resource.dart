import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retrofit_testing/app/modules/home/controllers/one_controller.dart';

class ONE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OneController controller = Get.find<OneController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Post Id 1"),
      ),
      body: Center(
        child: Obx(
          () => controller.isLoading == true
              ? const CircularProgressIndicator()
              : Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("id : ${controller.onlyOne.value!.id.toString()}"),
                      Text(
                          "userId : ${controller.onlyOne.value!.userId.toString()}"),
                      Text(
                          "title :${controller.onlyOne.value!.title.toString()}"),
                      Text(
                          "body :${controller.onlyOne.value!.body.toString()}"),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
