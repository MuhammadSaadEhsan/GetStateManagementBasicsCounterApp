import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemgt/components/text_component.dart';
import 'package:statemgt/controller/homeController/home_controller.dart';

// ignore: must_be_immutable
class AddView extends StatelessWidget {
  AddView({super.key});
  HomeController homeControl = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Center(child: TextComponent(textComponentValue: homeControl.counterValue.value.toString() + Get.arguments))),
      // body: GetX<HomeController>(
      //   builder: (controller) {
      //     return Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Center(child: TextComponent(textComponentValue: controller.counterValue.value.toString(),),)
      //       ],
      //     );
      //   },
      // ),
    );
  }
}
