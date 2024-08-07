import 'package:fintech/utils/colors.dart';
import 'package:flutter/material.dart';

class TransactionData {
  static const List<Map> transaction_items = [
    {
      "icon": Icons.laptop,
      "title": 'Adobe Illustrator',
      "subtitle": "Subcription fee",
      "amount": '-\$32.00',
      "color": AppColors.orangeWhiteColor,
      "color_icon": AppColors.orangeColor
    },
    {
      "icon": Icons.laptop,
      "title": 'Dribble',
      "subtitle": "Subcription fee",
      "amount": '-\$15.00',
      "color": AppColors.orangeWhiteColor,
      "color_icon": AppColors.orangeColor
    },
    {
      "icon": Icons.shopping_bag_outlined,
      "title": 'Sony Camera',
      "subtitle": "Shopping fee",
      "amount": '-\$200.00',
      "color": AppColors.pinkWhiteColor,
      "color_icon": AppColors.pinkColor
    },
    {
      "icon": Icons.payment_outlined,
      "title": 'Paypal',
      "subtitle": "Salary",
      "amount": '+\$32.00',
      "color": AppColors.greenWhiteColor,
      "color_icon": AppColors.greenColor
    }
  ];
}
