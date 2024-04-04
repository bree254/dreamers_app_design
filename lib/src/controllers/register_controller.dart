import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
class RegisterController extends GetxController{
  final emailcontroller = TextEditingController().obs;
  final passwordcontroller = TextEditingController().obs;
  final phonecontroller = TextEditingController().obs;
  final fnamecontroller = TextEditingController().obs;
  final lnamecontroller = TextEditingController().obs;
}