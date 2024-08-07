import 'package:fintech/utils/colors.dart';
import 'package:flutter/material.dart';

Widget buildTransactionItem(Map cardDetails) {
  return Card(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: cardDetails["color"],
              borderRadius: BorderRadius.circular(25)),
          child: Icon(
            cardDetails["icon"],
            color: cardDetails["color_icon"],
          ),
        ),
        title: Text(
          cardDetails["title"],
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(cardDetails["subtitle"]),
        trailing: Text(cardDetails["amount"],
            style: TextStyle(
                color: cardDetails["amount"].startsWith("-")
                    ? AppColors.redSolidColor
                    : AppColors.greenSolidColor,
                fontSize: 15)),
      ),
    ),
  );
}
