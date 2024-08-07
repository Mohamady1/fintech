import 'package:fintech/controller/visa_cards.dart';
import 'package:fintech/data/transaction_data.dart';
import 'package:fintech/widgets/add_card_button.dart';
import 'package:fintech/widgets/transaction_item.dart';
import 'package:fintech/widgets/wallet_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletScreen extends StatelessWidget {
  final VisaCards controller = Get.put(VisaCards());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Wallet",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: CircleAvatar(
          backgroundImage: AssetImage("assets/images/me.png"),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.defaultDialog(
                  title: "DELETE !!",
                  middleText: "You will Delete All Cards",
                  onConfirm: () {
                    controller.removeAll();
                    Get.back();
                  });
            },
            icon: Icon(
              Icons.more_vert_outlined,
              size: 35,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              SizedBox(
                height: 200,
                child: Row(
                  children: [
                    buildAddCardButton(),
                    SizedBox(width: 20),
                    Obx(
                      () => Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return WalletCard(
                              cardData: controller.visaCards[index],
                            );
                          },
                          itemCount: controller.visaCards.length,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transaction",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.filter_alt_outlined,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(height: 10),
              ...TransactionData.transaction_items.map((item) {
                return buildTransactionItem(item);
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
