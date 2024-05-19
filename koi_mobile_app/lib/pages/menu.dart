import 'package:flutter/material.dart';
import 'package:koi_mobile_app/pages/askquestion.dart';
import 'package:koi_mobile_app/pages/home.dart';
import 'package:koi_mobile_app/pages/pastpapers.dart';
import 'package:koi_mobile_app/pages/unitquestions.dart';
import 'package:koi_mobile_app/pages/viewreviews.dart';
import 'package:koi_mobile_app/pages/widgets/footer.dart';
import 'package:koi_mobile_app/pages/widgets/topbar.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            // Your main content here
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 305, // Set the width of the button
                  height: 100, // Set the height of the button
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AskQuestion()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xFF2EC0CD)), // Set the color of the button
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10.0), // Rounded corners
                        ),
                      ),
                    ),
                    child: Text(
                      'Ask a Question',
                      style: TextStyle(
                        color: Colors.white, // Set the text color
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Add some space between the buttons
                SizedBox(
                  width: 305, // Set the width of the button
                  height: 100, // Set the height of the button
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UnitQuestions()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xFF2EC0CD)), // Set the color of the button
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10.0), // Rounded corners
                        ),
                      ),
                    ),
                    child: Text(
                      'Unit Questions',
                      style: TextStyle(
                        color: Colors.white, // Set the text color
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Add some space between the buttons
                SizedBox(
                  width: 305, // Set the width of the button
                  height: 100, // Set the height of the button
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PastPapers()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xFF2EC0CD)), // Set the color of the button
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10.0), // Rounded corners
                        ),
                      ),
                    ),
                    child: Text(
                      'Past Papers',
                      style: TextStyle(
                        color: Colors.white, // Set the text color
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Add some space between the buttons
                SizedBox(
                  width: 305, // Set the width of the button
                  height: 100, // Set the height of the button
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ViewReview()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xFF2EC0CD)), // Set the color of the button
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10.0), // Rounded corners
                        ),
                      ),
                    ),
                    child: Text(
                      'Discussion Rooms',
                      style: TextStyle(
                        color: Colors.white, // Set the text color
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ],
            )),
            TopBar(),
            Footer()
          ],
        ));
  }
}
