import 'package:get/get.dart';

import '../data/models/category_model.dart';

class CategoryController extends  GetxController{

  RxList<CategoryModel> categoryList = [
    CategoryModel(
        title:"Hotel Name",
        description: "description",
        imageUrl: "assets/images/image/3star_hotel.png",
        price: 3000,
        rating: 4.5),
    CategoryModel(
        title:"Hotel Name",
        description: "description",
        imageUrl: "assets/images/image/3star_hotel.png",
        price: 3000,
        rating: 4.5),
    CategoryModel(
        title:"Hotel Name",
        description: "description",
        imageUrl: "assets/images/image/3star_hotel.png",
        price: 3000,
        rating: 4.5),
  ].obs;

}