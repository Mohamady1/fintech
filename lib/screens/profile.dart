import 'package:fintech/utils/colors.dart';
import 'package:fintech/widgets/profile_card.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Profile',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage("assets/images/me.png"), // Placeholder image
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text('Client Name',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Center(
                child: Text('client.email@example.com',
                    style: TextStyle(color: AppColors.greyColor)),
              ),
              SizedBox(height: 20),
              ProfileCard(icon: Icons.person, title: 'Personal Information'),
              ProfileCard(icon: Icons.security, title: 'Security Settings'),
              ProfileCard(
                  icon: Icons.notifications, title: 'Notification Preferences'),
              ProfileCard(icon: Icons.settings, title: 'App Settings'),
              ProfileCard(icon: Icons.logout, title: "Log Out"),
            ],
          ),
        ),
      ),
    );
  }
}
