import 'package:fintech/utils/colors.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  final String title;
  final String price;
  final IconData icon;
  const DetailsCard(
      {required this.icon,
      required this.price,
      required this.title,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 50,
          color: title == "Income"
              ? AppColors.greenColor
              : AppColors.redSolidColor,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Color.fromARGB(255, 211, 209, 209), fontSize: 20),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3.6,
              child: Text(
                '\$${price}',
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ],
    );
  }
}
