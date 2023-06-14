import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:retrofit_testing/app/modules/home/controllers/one_controller.dart';
import 'package:retrofit_testing/app/modules/home/controllers/test_post_controller.dart';

import '../controllers/list_controller.dart';

class TestPostView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TestPostController controller = Get.find<TestPostController>();
    return Scaffold(
        appBar: AppBar(
          title: const Text("Test Post"),
        ),
        body: Obx(() => controller.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("id : ${controller.testPost.value!.id.toString()}"),
                    Text(
                        "userId : ${controller.testPost.value!.userId.toString()}"),
                    Text(
                        "title :${controller.testPost.value!.title.toString()}"),
                    Text("body :${controller.testPost.value!.body.toString()}"),
                  ],
                ),
              )));
  }
}
