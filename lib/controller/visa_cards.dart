import 'package:get/get.dart';

class VisaCards extends GetxController {
  RxList<Map<String, String>> visaCards = [
    {"price": "25000.40", "card_number": "1234567823463456", "expire": "09/23"},
  ].obs;

  void addToCard() {
    visaCards.add(
      {
        "price": "25000.40",
        "card_number": "1234567823463456",
        "expire": "09/23"
      },
    );
  }

  void removeAll() {
    visaCards.clear();
  }
}
