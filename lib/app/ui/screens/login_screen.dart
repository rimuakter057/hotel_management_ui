import 'package:flutter/material.dart';
import 'package:hotel_management/app/ui/utils/app_text.dart';
import 'package:hotel_management/app/ui/utils/image_url.dart';
import 'package:hotel_management/app/ui/utils/text_style.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'main_nav_screen/main_nav_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final gap = SizedBox(
      height: size.height * .02,
    );
    return Scaffold(
      body: Container(
        height: size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            "assets/images/image/login_image.png",
          ),
          fit: BoxFit.cover,
        )),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * .03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * .25,
                ),
                Image.asset(
                  ImageUrl.splashText,
                  height: size.height * .15,
                  width: size.width * .9,
                ),
                gap,
                Form(
                  child: Column(
                    children: [
                      CustomTextField(
                        size: size,
                        labelText: 'Email',
                      ),
                      gap,
                      CustomTextField(
                        size: size,
                        labelText: 'Password',
                      ),
                      gap
                    ],
                  ),
                ),
                CustomButton(
                  size: size,
                  buttonName: AppText.logIn,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainNavScreen()));
                  },
                ),
                gap,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          AppText.forgetPassword,
                          style: MyTextStyle.buttonTextStyle,
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
