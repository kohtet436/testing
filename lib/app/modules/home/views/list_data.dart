import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:retrofit_testing/app/modules/home/controllers/one_controller.dart';

import '../controllers/list_controller.dart';

class ListData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ListController controller = Get.find<ListController>();
    return Scaffold(
        appBar: AppBar(
          title: const Text("Get All Posts"),
        ),
        body: Obx(
          () => controller.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      itemCount: controller.onlyOne.value!.length,
                      itemBuilder: ((context, index) => Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "id : ${controller.onlyOne.value![index].id.toString()}"),
                                  Text(
                                      "userId : ${controller.onlyOne.value![index].userId.toString()}"),
                                  Text(
                                      "title :${controller.onlyOne.value![index].title.toString()}"),
                                  Text(
                                      "body :${controller.onlyOne.value![index].body.toString()}"),
                                ],
                              ),
                            ),
                          ))),
                ),
        ));
  }
}
