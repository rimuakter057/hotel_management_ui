import 'package:flutter/material.dart';
import 'package:hotel_management/app/ui/utils/image_url.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: const AssetImage(ImageUrl.splash),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(.1),
                    BlendMode.color
                )
            )
        ),
        alignment: Alignment.center,
        child: Image.asset(ImageUrl.splashText,
        height:size.height*.15 ,
          width: size.width*.9,
        ),

      ),
    );
  }
}
