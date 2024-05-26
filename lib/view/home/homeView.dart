import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:statemgt/components/text_component.dart';
import 'package:statemgt/controller/homeController/home_controller.dart';
import 'package:statemgt/view/add/add_view.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({super.key});

  HomeController homeControl =
      Get.put(HomeController()); //instances linked through out the app

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: GetBuilder<HomeController>(builder: (c) {
        body: GetX<HomeController>(builder: (c) {
          //Obx=>{} for stream type
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Center(
                child: TextComponent(
                  textComponentValue: c.counterValue.value.toString(),
                  // style: const TextStyle(fontSize: 25),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => AddView(),
                    //       ));
                    Get.to(AddView(), arguments: "Saad");
                    // Get.back(); == like navigator.pop
                    // Get.back(result: "saad"); -- returned that element
                    // Get.off(); == like navigator.pushReplacement   clear last route
                    // Get.toNamed(); == osko page ka route milega for web pages -- /about
                    // Get.ofUntil(); == current k elawa sb remove krdega
                  },
                  child: const Text("Navigate")),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: TextField(
                  controller: homeControl.amountController,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    homeControl.credit();
                  },
                  child: const Text("Credit")),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: () {
                    homeControl.debit();
                  },
                  child: const Text("Debit")),

              Expanded(
                child: ListView.builder(
                  itemCount: homeControl.history.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(homeControl.history[index]["amount"].toString()),
                      subtitle: Text(homeControl.history[index]["Status"].toString()),
                      trailing: homeControl.history[index]["Status"]=="Credit" ? const Icon(Icons.arrow_upward,color: Colors.green,) : const Icon(Icons.arrow_downward,color: Colors.red,),
                      
                    );
                  },
                ),
              )

            ],
          );
        }),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 70, right: 50, bottom: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: () {
                  homeControl.subtractValue();
                },
                child: const Icon(Icons.delete),
              ),
              FloatingActionButton(
                onPressed: () {
                  homeControl.addValue();
                },
                child: Icon(Icons.add),
              ),
            ],
          ),
        ));
  }
}
