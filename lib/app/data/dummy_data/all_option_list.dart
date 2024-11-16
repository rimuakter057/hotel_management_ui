import 'package:hotel_management/app/data/models/all_option_model.dart';
import 'package:hotel_management/app/ui/utils/app_text.dart';
import 'package:hotel_management/app/ui/utils/color.dart';
import 'package:hotel_management/app/ui/utils/icon_url.dart';

List<AllOptionModel> allOptionList = [
  AllOptionModel(
      firstColor: AppColors.blueShade,
      secondColor: AppColors.blueShadeTwo,
      assetImage: IconUrl.hotelList,
      text: AppText.hotelList),
  AllOptionModel(
      firstColor: AppColors.blueShade,
      secondColor: AppColors.blueShadeTwo,
      assetImage: IconUrl.agentList,
      text: AppText.agentList),
  AllOptionModel(
      firstColor: AppColors.blueShade,
      secondColor: AppColors.blueShadeTwo,
      assetImage: IconUrl.hotelList,
      text: AppText.hotelList),
];
