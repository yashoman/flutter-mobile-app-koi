import 'package:flutter/material.dart';
import 'package:koi_mobile_app/pages/viewquestion.dart';
import 'package:koi_mobile_app/pages/widgets/footer.dart';
import 'package:koi_mobile_app/pages/widgets/topbar.dart';

class Answer extends StatelessWidget {
  const Answer({super.key});

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
                      'Post Answer',
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
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Divider(
                      thickness: 2, // Adjust thickness as needed
                      color: Colors.grey,
                    ),
                    SizedBox(
                        height:
                            10), // Add space between dividers and profile information
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
                              'Yasho Wickramasinghe',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF25628F)),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(Icons.message),
                          onPressed: () {
                            // Handle message icon press
                          },
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
              SizedBox(height: 10), // Add space between subscribe and divider
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: 350, // Fixed width
                  height: 160, // Fixed height
                  padding: const EdgeInsets.all(16.0), // Padding inside the box
                  color: Color(0xFFF2F2F2), // Background color of the box
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What is the difference between UX and UI?',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF25628F), // Heading text color
                        ),
                      ),
                      SizedBox(
                          height: 5), // Space between heading and normal text
                      Text(
                        'Can you please explain the difference in these terms as I am unable to find a solution for my question',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF828282), // Normal text color
                        ),
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
                        'Answer',
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
              SizedBox(
                  height: 10), // Add space between "Answer" and the text area
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        maxLines:
                            5, // Allow multiple lines for the answer input
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Type your answer here...',
                        ),
                      ),
                      SizedBox(
                          height: 10), // Add space between text area and button
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ViewQuestion()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Color(0xFF25628F), // Button background color
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0), // Button padding
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            'Post Answer',
                            style: TextStyle(
                              color: Colors.white, // Specify the text color
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
