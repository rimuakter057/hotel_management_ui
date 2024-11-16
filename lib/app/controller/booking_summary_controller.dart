
import 'package:get/get.dart';
import 'package:hotel_management/app/data/models/booking_summary_model.dart';

class BookingSummaryController extends GetxController{
  RxList <BookingSummaryModel> bookingSummaryList = [
    BookingSummaryModel(title:"Booking Date",
        value: "1-OCT-2024"
    ),
    BookingSummaryModel(title:"Cheek-in",
        value: "10-OCT-2024"
    ),
    BookingSummaryModel(title:"Cheek-out",
        value: "15-OCT-2024"
    ),
    BookingSummaryModel(title:"Guests",
        value: "3"
    ),
    BookingSummaryModel(title:"Room(s)",
        value: "1"
    ),
    BookingSummaryModel(title:"Amount",
        value: "\$350 * 2"
    ),
    BookingSummaryModel(title:"Tax",
        value: "\$30"
    ),
    BookingSummaryModel(title:"Total",
        value: "\$700"
    ),
  ].obs;
}