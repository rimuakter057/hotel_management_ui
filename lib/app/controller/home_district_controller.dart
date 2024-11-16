
import 'package:get/get.dart';
import 'package:hotel_management/app/data/models/home_district_model.dart';
import 'package:hotel_management/app/ui/utils/image_url.dart';

class HomeDistrictController {
  RxList <HomeDistrictModel> homeDistrictList = <HomeDistrictModel> [
    HomeDistrictModel(name: "Alabama",
        image:ImageUrl.roomOne),
    HomeDistrictModel(name: "Alaska",
        image:ImageUrl.roomTwo),
    HomeDistrictModel(name: "Arizona",
        image:ImageUrl.roomOne),
    HomeDistrictModel(name: "Arkansas",
        image:ImageUrl.hotelFive),
    HomeDistrictModel(name: "California",
        image:ImageUrl.roomOne),
    HomeDistrictModel(name: "Colorado",
        image:ImageUrl.roomOne),
    HomeDistrictModel(name: "Connecticut",
        image:ImageUrl.roomTwo),
  ].obs;
}