import "package:dotted_border/dotted_border.dart";
import "package:fintech/controller/visa_cards.dart";
import "package:fintech/utils/colors.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

Widget buildAddCardButton() {
  final VisaCards controller = Get.find();
  return DottedBorder(
    borderType: BorderType.RRect,
    dashPattern: [16, 10, 0, 0],
    strokeWidth: 4,
    child: Container(
      color: AppColors.whiteColor,
      width: 60,
      child: Center(
        child: InkWell(
          onTap: () {
            controller.addToCard();
          },
          child: Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.blackColor,
            ),
            child: Icon(
              Icons.add,
              size: 25,
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ),
    ),
  );
}
