

import 'package:get/get.dart';

import '../data/models/all_option_model.dart';
import '../ui/utils/app_text.dart';
import '../ui/utils/color.dart';
import '../ui/utils/icon_url.dart';

class AllOptionController extends GetxController {
  RxList<AllOptionModel> allOptionList = [
    AllOptionModel(
        firstColor: AppColors.tealColor,
        secondColor: AppColors.tealShade,
        assetImage: IconUrl.createEmployee,
        text: AppText.createEmployee,),
    AllOptionModel(
        firstColor: AppColors.blueShade,
        secondColor: AppColors.blueShadeTwo,
        assetImage: IconUrl.employeeList,
        text: AppText.employeeList),
    AllOptionModel(
        firstColor: AppColors.yellowShade,
        secondColor: AppColors.yellowShadeTwo,
        assetImage: IconUrl.addRoom,
        text: AppText.addRoom),
    AllOptionModel(
        firstColor: AppColors.yellowShade,
        secondColor: AppColors.yellowShadeTwo,
        assetImage: IconUrl.createHotel,
        text: AppText.roomList),
    AllOptionModel(
        firstColor: AppColors.tealColor,
        secondColor: AppColors.tealShade,
        assetImage: IconUrl.hotelList,
        text: AppText.editRoom),
    AllOptionModel(
        firstColor: AppColors.blueShade,
        secondColor: AppColors.blueShadeTwo,
        assetImage: IconUrl.agentList,
        text: AppText.deleteList),
  ].obs;

}