import "package:fintech/utils/colors.dart";
import "package:flutter/material.dart";

class BalanceCard extends StatelessWidget {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Balance',
                style: TextStyle(
                  color: Color.fromARGB(255, 211, 209, 209),
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '\$25,000.40',
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'My Wallet',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward,
                          size: 30,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -50,
          left: -30,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: AppColors.tealColor,
          ),
        ),
        Positioned(
          top: 7,
          right: -60,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: AppColors.orangeBallColor,
          ),
        ),
        Positioned(
          right: 0,
          top: -40,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: ThemeData().primaryColorDark,
          ),
        ),
      ],
    );
  }
}
