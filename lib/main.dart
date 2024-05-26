import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemgt/view/home/homeView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  } 
}
//getx  14000 likes  most in market   work easy -> architectures -> mvvm , mvc (data ui logic) (used mostly) , bloc pattern (bloc cubit & simple block)
//stacked  -> mvvm
//bloc   world wide
//provider
//riverpod  flutter official support


// get -> mini framework, his own routing , dark mode & light mode
// reactive state mgt => Obx & Getx      eg (stream)
// non reactive state mgt (simple state mgt) => Get Builder  eg (future)
//disadv -> no context here , no particular architecture



//obs => observable
//implement -> data abstraction
//signleton => having same instance through out the application

// lifecycle of statefull (9) and stateless (build 1) others

//now no more set state

// .value se get krenge obs wale me

// single widget and changing auto    Obx
// Multiple widget and changing auto    GetX

//get material app se hame context k bagher sb kam kr skty he


//stateless vs statefull
//data ko change nh hona to stateless
//data ko change hona to statefull






// physics: NeverScrollableScrollPhysics(),
// ShrinkWrap : true  

// while builder inside column