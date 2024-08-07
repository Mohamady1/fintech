import 'package:fintech/utils/colors.dart';
import 'package:fintech/widgets/income_outcome/details_card.dart';
import 'package:flutter/material.dart';

class CommingCard extends StatelessWidget {
  const CommingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xFF212121),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DetailsCard(
                  icon: Icons.arrow_downward_outlined,
                  price: "20,000",
                  title: "Income"),
              DetailsCard(
                  icon: Icons.arrow_upward_outlined,
                  price: "17,000",
                  title: "Outcome")
            ],
          ),
        ),
        Positioned(
          bottom: -20,
          right: -15,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: AppColors.earnCardPink,
          ),
        ),
        Positioned(
          top: -20,
          left: -15,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: ThemeData().primaryColor,
          ),
        ),
      ],
    );
  }
}
