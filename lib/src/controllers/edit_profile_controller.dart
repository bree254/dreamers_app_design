import 'package:get/get.dart';
import 'package:flutter/material.dart';
class EditProfileController extends GetxController{

  var obsecureText = true.obs;

  final emailcontroller = TextEditingController().obs;
  final passwordcontroller = TextEditingController().obs;
  final phonecontroller = TextEditingController().obs;
  final namecontroller = TextEditingController().obs;

}