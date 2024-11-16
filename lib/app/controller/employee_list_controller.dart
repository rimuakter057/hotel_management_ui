import 'package:get/get.dart';
import 'package:hotel_management/app/data/models/employee_list_model.dart';
import 'package:hotel_management/app/ui/utils/color.dart';
import 'package:hotel_management/app/ui/utils/profile_image_url.dart';

class EmployeeListController extends GetxController {
  RxList<EmployeeListModel> employeeList = [
    EmployeeListModel(
        title: "Riyana Muntaha",
        subTitle: "Manager",
        profileImage: ProfileImageUrl.womanOne,
        tileColor: AppColors.tealShade,
    ),
    EmployeeListModel(
        tileColor: AppColors.redShadeTwo,
        title: "Sinior Millat",
        subTitle: "Manager",
        profileImage: ProfileImageUrl.profileOne),
    EmployeeListModel(
        tileColor: AppColors.limeShadeTwo,
        title: "Riyana Muntaha",
        subTitle: "Manager",
        profileImage: ProfileImageUrl.womanTwo),
    EmployeeListModel(
        tileColor: AppColors.tealShade,
        title: "Morshed Riyan",
        subTitle: "Manager",
        profileImage: ProfileImageUrl.profileTwo),
    EmployeeListModel(
        tileColor: AppColors.limeShadeTwo,
        title: "Samira Binte",
        subTitle: "Employee",
        profileImage: ProfileImageUrl.womanThree),
    EmployeeListModel(
        tileColor: AppColors.tealShade,
        title: "Lakib Binte Labib",
        subTitle: "Employee",
        profileImage: ProfileImageUrl.profileThree),
    EmployeeListModel(
        tileColor: AppColors.pinkShadeTwo,
        title: "Maowa Amayra",
        subTitle: "Manager",
        profileImage: ProfileImageUrl.womanFour),
    EmployeeListModel(
        tileColor: AppColors.tealShade,
        title: "Muntaha Sijana",
        subTitle: "Employee",
        profileImage: ProfileImageUrl.womanFive),
    EmployeeListModel(
        tileColor: AppColors.limeShadeTwo,
        title: "Muntaha Sijana",
        subTitle: "Employee",
        profileImage: ProfileImageUrl.womanFive),
    EmployeeListModel(
        tileColor: AppColors.redShadeTwo,
        title: "Abdullah Al Riyad",
        subTitle: "Manager",
        profileImage: ProfileImageUrl.profileFour),
  ].obs;
}
