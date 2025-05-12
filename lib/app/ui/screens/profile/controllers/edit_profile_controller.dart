/*












import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/validator/regx_validator.dart';
import '../screens/profile_screen.dart';


class EditProfileController extends GetxController {
  final editFormKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();

  var isFormFieldValid = false.obs;

  // Name validator
  String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Name is required';
    }
    return null;
  }

  // Email validator
  String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }
    return RegexValidator.validateEmail(value);
  }

  // Update form validation status
  void updateFormValidity() {
    isFormFieldValid.value = editFormKey.currentState?.validate() ?? false;
  }

  // SignUp form submission
  void save() {
    if (editFormKey.currentState!.validate()) {
      final name = nameController.text.trim();
      final email = emailController.text.trim();

      print('Name: $name\nEmail: $email');

      Get.snackbar('Success', 'save successfully');
      clearForm();
      Get.offAllNamed(ProfileScreen.name);




    }
  }

  void clearForm() {
    nameController.clear();
    emailController.clear();
  }


  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    super.onClose();
  }
}
*/
