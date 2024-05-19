import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final String headingText;
  final String subText;
  final bool showStars; // Optional parameter to show stars

  const CustomBox({
    Key? key,
    required this.headingText,
    required this.subText,
    this.showStars = false, // Default value is false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Container(
        width: 350, // Fixed width
        height: 188, // Fixed height
        padding: const EdgeInsets.all(16.0), // Padding inside the box
        color: Color(0xFFF2F2F2), // Background color of the box
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headingText,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF25628F), // Heading text color
              ),
            ),
            SizedBox(height: 10), // Space between heading and normal text
            Text(
              subText,
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xFF828282), // Normal text color
              ),
            ),
            if (showStars) // Conditionally render stars if showStars is true
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  for (var i = 0; i < 3; i++)
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  for (var i = 0; i < 2; i++)
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
