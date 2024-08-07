import 'package:fintech/data/transaction_data.dart';
import 'package:fintech/utils/colors.dart';
import 'package:fintech/widgets/balance_card.dart';
import 'package:fintech/widgets/earn_card.dart';
import 'package:fintech/widgets/income_outcome/coming_card.dart';
import 'package:fintech/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/me.png"),
                  radius: 22,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Good Morning!', style: TextStyle(fontSize: 15)),
                    Text('Client Name',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400)),
                  ],
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_none_rounded,
                      size: 30,
                    ))
              ],
            ),
            SizedBox(height: 20),
            BalanceCard(),
            SizedBox(height: 20),
            CommingCard(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Earnings",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.urlColor),
                )
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildEarningsCard('Upwork', '\$3,000', AppColors.earnCardRed),
                  buildEarningsCard(
                      'Freepik', '\$3,000', AppColors.earnCardPink),
                  buildEarningsCard(
                      'Envato', '\$2,000', AppColors.earnCardBlue),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Transaction",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.urlColor),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text("Today"),
            SizedBox(
              height: 5,
            ),
            ...TransactionData.transaction_items.map((item) {
              return buildTransactionItem(item);
            })
          ],
        ),
      ),
    );
  }
}
