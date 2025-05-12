
import 'package:flutter/material.dart';
import 'package:hotel_management/app/ui/screens/login_screen.dart';
import '../../../utils/app_text.dart';
import '../../../widgets/custom_button.dart';
import '../widget/profile_option.dart';
import '../widget/profile_widget.dart';



class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(children: [
          ///show profile
          const ProfileWidget(),
           /// profile option
          _buildProfileOption(context)
        ],),
      )
    );
  }


  /// profile option
  Widget _buildProfileOption(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04), // responsive padding
      child: Column(
        children: [
               ProfileOptionWidget(
            icon: Icons.info,
            title: "Personal Information",
            onTap: () {
              print("onTap Personal Information==================");
            },
          ),
          ProfileOptionWidget(
            icon: Icons.edit,
            title: "Edit Profile",
            onTap: () {
              print("onTapEdit Profile==================");
            },
          ),
          ProfileOptionWidget(
            icon: Icons.password,
            title: "Change Password",
            onTap: () {
              print("onTap Change Password==================");
    
            },
          ),
          ProfileOptionWidget(
            icon: Icons.help,
            title: "Help Center",
            onTap: () {
              print("helpCenter==================");
    
    
            },
          ),
          ProfileOptionWidget(
            icon: Icons.privacy_tip_outlined,
            title: "Privacy Policy",
            onTap: () {

    print("onTapPrivacy Policy==================");
            },
          ),
          SizedBox(height: 20,),
            CustomButton(size:  MediaQuery.sizeOf(context), buttonName: AppText.logIn,
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              print("login");
            },),

            ],
      ),
    );
  }


}
