import 'package:fintech/utils/colors.dart';
import 'package:flutter/material.dart';

Widget buildEarningsCard(String title, String amount, Color color) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Container(
      width: 140,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: AppColors.letterContainerColor),
              child: Center(
                  child: Text(
                title.substring(0, 1).toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )),
            ),
            Spacer(),
            Text(title, style: TextStyle(color: AppColors.whiteColor)),
            Text(amount,
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    ),
  );
}
