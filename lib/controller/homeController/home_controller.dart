import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var counterValue = 0.obs;
  // var counterValue = 0;
  TextEditingController amountController = TextEditingController();
  List history = [];

  addValue() {
    counterValue++;
    // update();
    // print(counterValue);
  }

  subtractValue() {
    counterValue = counterValue - 2;
    // update();
    // print(counterValue);
  }

  credit() {
    counterValue += int.parse(amountController.text);
    history.add({
      "amount": amountController.text,
      "Status": "Credit"
    });
  }

  debit() {
    if(int.parse(amountController.text)>counterValue.value){
      Get.snackbar("Amount Status", "Amount not available",
        snackPosition: SnackPosition.BOTTOM);
    }
    else{
      counterValue -= int.parse(amountController.text);
      Get.snackbar("Amount Status", "Amount Deducted",
          snackPosition: SnackPosition.BOTTOM);
      }
      history.add({
        "amount": amountController.text,
        "Status": "Debit"
      });
  }
}
