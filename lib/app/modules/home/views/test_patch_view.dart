import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/test_patch_contoller.dart';

class TestPatchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TestPatchController controller = Get.find<TestPatchController>();
    return Scaffold(
        appBar: AppBar(title: const Text("Patch Method")),
        body: Obx(() => controller.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("id : ${controller.testPatch.value!.id.toString()}"),
                    Text(
                        "userId : ${controller.testPatch.value!.userId.toString()}"),
                    Text(
                        "title :${controller.testPatch.value!.title.toString()}"),
                    Text(
                        "body :${controller.testPatch.value!.body.toString()}"),
                  ],
                ),
              )));
  }
}
