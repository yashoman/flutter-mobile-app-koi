import 'package:flutter/material.dart';
import 'package:koi_mobile_app/pages/home.dart';
import 'package:koi_mobile_app/pages/profile.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          bottom: 10,
          child: Container(
            margin: EdgeInsets.only(left: 25, top: 0.0),
            child: Image.asset(
              'lib/assets/images/logo.png',
              width: 150, // Adjust the width as needed
              height: 150, // Adjust the height as needed
              alignment: Alignment.topLeft,
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            margin: EdgeInsets.only(right: 25, top: 0.0),
            child: GestureDetector(
              onTap: () {
                // Navigate to the profile page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()), // Replace with your ProfilePage
                );
              },
              child: CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage(
                  'lib/assets/images/yasho-profile.jpg',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
