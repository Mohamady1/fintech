import 'package:fintech/utils/colors.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String title;
  final IconData icon;
  const ProfileCard({required this.icon, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteColor,
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
