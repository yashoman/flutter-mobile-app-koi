import 'package:flutter/material.dart';
import 'package:koi_mobile_app/pages/widgets/footer.dart';
import 'package:koi_mobile_app/pages/widgets/topbar.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 0, // Set toolbarHeight to 0 to hide the default AppBar
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 50.0), // Adjust the top padding as needed
            child: TopBar(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                  height:
                      150), // Fixed space between top of screen and the text
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'My Notifications',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF25628F),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Subscribed Questions',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF25628F),
                            fontSize:
                                15, // Set the color for the second part of the text
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10), // Add space between subscribe and divider
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Divider(
                      thickness: 2, // Adjust thickness as needed
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10), // Add space between subscribe and divider
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Divider(
                      thickness: 1, // Adjust thickness as needed
                      color: Color(0xFF2EC0CD),
                    ),
                    SizedBox(
                        height:
                            5), // Add space between dividers and profile information
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment
                          .center, // Center the children vertically
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                  'lib/assets/images/yasho-profile.jpg'),
                              backgroundColor:
                                  Colors.grey, // Placeholder background color
                            ),
                            SizedBox(
                                width:
                                    10), // Add space between profile image and name
                            Text(
                              'What is the best way to build your own...',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF25628F)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                        height:
                            5), // Add space between profile information and footer divider
                    Divider(
                      thickness: 1, // Adjust thickness as needed
                      color: Color(0xFF2EC0CD),
                    ),
                  ],
                ),
              ), // Add space between subscribe and divider
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Divider(
                      thickness: 1, // Adjust thickness as needed
                      color: Color(0xFF2EC0CD),
                    ),
                    SizedBox(
                        height:
                            5), // Add space between dividers and profile information
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment
                          .center, // Center the children vertically
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                  'lib/assets/images/p1-profile.jpg'),
                              backgroundColor:
                                  Colors.grey, // Placeholder background color
                            ),
                            SizedBox(
                                width:
                                    10), // Add space between profile image and name
                            Text(
                              'What is the best way to build your own...',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF25628F)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                        height:
                            5), // Add space between profile information and footer divider
                    Divider(
                      thickness: 1, // Adjust thickness as needed
                      color: Color(0xFF2EC0CD),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Divider(
                      thickness: 1, // Adjust thickness as needed
                      color: Color(0xFF2EC0CD),
                    ),
                    SizedBox(
                        height:
                            5), // Add space between dividers and profile information
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment
                          .center, // Center the children vertically
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                  'lib/assets/images/yasho-profile.jpg'),
                              backgroundColor:
                                  Colors.grey, // Placeholder background color
                            ),
                            SizedBox(
                                width:
                                    10), // Add space between profile image and name
                            Text(
                              'What is the best way to build your own...',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF25628F)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                        height:
                            5), // Add space between profile information and footer divider
                    Divider(
                      thickness: 1, // Adjust thickness as needed
                      color: Color(0xFF2EC0CD),
                    ),
                  ],
                ),
              ), // Add space between subscribe and divider
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Divider(
                      thickness: 1, // Adjust thickness as needed
                      color: Color(0xFF2EC0CD),
                    ),
                    SizedBox(
                        height:
                            5), // Add space between dividers and profile information
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment
                          .center, // Center the children vertically
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                  'lib/assets/images/p1-profile.jpg'),
                              backgroundColor:
                                  Colors.grey, // Placeholder background color
                            ),
                            SizedBox(
                                width:
                                    10), // Add space between profile image and name
                            Text(
                              'What is the best way to build your own...',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF25628F)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                        height:
                            5), // Add space between profile information and footer divider
                    Divider(
                      thickness: 1, // Adjust thickness as needed
                      color: Color(0xFF2EC0CD),
                    ),
                  ],
                ),
              ),

              Spacer(),
              Footer(),
            ],
          ),
        ],
      ),
    );
  }
}
