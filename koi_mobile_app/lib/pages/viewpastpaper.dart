import 'package:flutter/material.dart';
import 'package:koi_mobile_app/pages/answer.dart';
import 'package:koi_mobile_app/pages/widgets/custombox.dart';
import 'package:koi_mobile_app/pages/widgets/footer.dart';
import 'package:koi_mobile_app/pages/widgets/topbar.dart';

class ViewPastPaper extends StatelessWidget {
  const ViewPastPaper({super.key});

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
                height: 150, // Fixed space between top of screen and the text
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'View Question',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF25628F),
                      ),
                    ),
                    SizedBox(height: 40),
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
                          text: 'SUBSCRIBE',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF36D38),
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
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: 350, // Fixed width
                  height: 140, // Fixed height
                  padding: const EdgeInsets.all(16.0), // Padding inside the box
                  color: Color(0xFFF2F2F2), // Background color of the box
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ICT 725 - Term 1 - 2020 - Question 01',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF25628F), // Heading text color
                        ),
                      ),
                      SizedBox(
                        height: 5, // Space between heading and normal text
                      ),
                      Text(
                        'Explain the difference between UI and UX?',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF828282), // Normal text color
                        ),
                      ),
                      Spacer(), // Spacer to push the button to the bottom
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Answer()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color(0xFF25628F), // Button background color
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                  vertical: 8.0), // Button padding
                            ),
                            child: Text(
                              'Answer',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white, // Button text color
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10), // Add space before the next divider
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Similar Questions',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF25628F), // Text color
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10), // Add space between subscribe and divider
              Container(
                height: 300, // Fixed height for the scrollable section
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment
                                  .center, // Center the children vertically
                              children: [
                                Row(
                                  children: [ // Add space between profile image and name
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Question 05',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF25628F),
                                          ),
                                        ),
                                        Text(
                                          'Term 3 - 2022', // Replace with your desired date
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(
                                                0xFF828282), // Date text color
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'select',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF828282),
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Icon(Icons.arrow_circle_right,
                                        color: Color(0xFF25628F)),
                                    
                                  ],
                                ),
                                
                              ],
                            ),
                            SizedBox(
                                height:
                                    10), // Add space between profile information and footer divider
                            Divider(
                              thickness: 2, // Adjust thickness as needed
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment
                                  .center, // Center the children vertically
                              children: [
                                Row(
                                  children: [ // Add space between profile image and name
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Question 04',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF25628F),
                                          ),
                                        ),
                                        Text(
                                          'Term 1 - 2021', // Replace with your desired date
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(
                                                0xFF828282), // Date text color
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'select',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF828282),
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Icon(Icons.arrow_circle_right,
                                        color: Color(0xFF25628F)),
                                    
                                  ],
                                ),
                                
                              ],
                            ),
                            SizedBox(
                                height:
                                    10), // Add space between profile information and footer divider
                            Divider(
                              thickness: 2, // Adjust thickness as needed
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment
                                  .center, // Center the children vertically
                              children: [
                                Row(
                                  children: [ // Add space between profile image and name
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Question 01',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF25628F),
                                          ),
                                        ),
                                        Text(
                                          'Term 2 - 2021', // Replace with your desired date
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(
                                                0xFF828282), // Date text color
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'select',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF828282),
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Icon(Icons.arrow_circle_right,
                                        color: Color(0xFF25628F)),
                                    
                                  ],
                                ),
                                
                              ],
                            ),
                            SizedBox(
                                height:
                                    10), // Add space between profile information and footer divider
                            Divider(
                              thickness: 2, // Adjust thickness as needed
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Spacer(),
              Footer(),
            ],
          ),
        ],
      ),
    );
  }
}
