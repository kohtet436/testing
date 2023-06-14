import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/text_put_controller.dart';

class TestPutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TestPutController controller = Get.find<TestPutController>();
    return Scaffold(
        appBar: AppBar(
          title: Text("Test Put Method"),
        ),
        body: Obx(() => controller.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("id : ${controller.testPut.value!.id.toString()}"),
                    Text(
                        "userId : ${controller.testPut.value!.userId.toString()}"),
                    Text(
                        "title :${controller.testPut.value!.title.toString()}"),
                    Text("body :${controller.testPut.value!.body.toString()}"),
                  ],
                ),
              )));
  }
}
