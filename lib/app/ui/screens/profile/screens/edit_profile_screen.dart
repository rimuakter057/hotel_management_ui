/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../auth/screens/widget/field_title_text.dart';
import '../../auth/screens/widget/sign_in_up_head_container.dart';
import '../../common/widget/custom_appbar.dart';
import '../../common/widget/custom_button.dart';
import '../../common/widget/custom_icon.dart';
import '../../common/widget/custom_text_form_field.dart';
import '../controllers/edit_profile_controller.dart';
import '../widget/profile_widget.dart';


class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});
  static const String name = '/edit-profile-screen';

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final EditProfileController controller = Get.find<EditProfileController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Profile Screen",
        leadingWidget: CustomIcon(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04), // responsive padding

          child: Column(
            children: [
           ///show profile
              ProfileWidget(),
            ///edit form
              Column(
                 children: [
                   ///text form field
                   _buildForm(context),
                   SizedBox(height: MediaQuery.of(context).size.width * 0.06), // responsive spacing
                   ///button
                   CustomButton(text: 'Save', onPressed: () {
                     controller.save();
                   },),
                 ],
               ),
            ],
          ),
        ),
      ),

    );
  }

  ///text form field
  Form _buildForm(BuildContext context) {
    return Form(
                  key: controller.editFormKey,
                  autovalidateMode:AutovalidateMode.onUserInteraction,  // only show error after interaction
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FieldTitle(text: 'Full Name',),
                      CustomTextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: controller.validateName,
                        controller: controller.nameController, hintText: "enter your name",),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.04), // responsive spacing
                      FieldTitle(text: 'Email Address',),
                      CustomTextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: controller.validateEmail,
                        controller: controller.emailController,  hintText: "email334@gmail.com",),
                    ],
                  ),
                );
  }
}
*/
