import 'package:flutter/material.dart';
import 'package:koi_mobile_app/pages/home.dart';
import 'package:koi_mobile_app/pages/menu.dart';
import 'package:koi_mobile_app/pages/notifications.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
     return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color(0xFF828282), // Border color
                width: 1.0, // Border width
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildFooterIcon(context, 'lib/assets/images/home-footer.png', Menu()),
              _buildFooterIcon(context, 'lib/assets/images/notification-footer.png', Notifications()),
              _buildFooterIcon(context, 'lib/assets/images/message-footer.png', HomePage()),
            ],
          ),
        ),
      ),
    );
  }

Widget _buildFooterIcon(BuildContext context, String assetPath, Widget destinationPage) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0, right: 20.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destinationPage),
          );
        },
        child: Image.asset(
          assetPath,
          width: 30, // Adjust the width as needed
          height: 30, // Adjust the height as needed
        ),
      ),
    );
  }

}