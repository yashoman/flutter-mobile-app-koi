import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:koi_mobile_app/pages/menu.dart';
import 'package:koi_mobile_app/pages/signup.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double textFieldWidth = 400;

    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          // No leading widget in the app bar
        ),
        body: Stack(
          children: [
            // Your main content here
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign In',
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: textFieldWidth,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                   Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: textFieldWidth,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Add your forgot password logic here
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFF36D38), // Specify the color
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: textFieldWidth, // Set the width of the button to match the text fields
                    child: SizedBox(
                      height: 50, // Set the height of the button
                      child: ElevatedButton(
                        onPressed: () {
                         Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Menu()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF25628F)), // Specify the color
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0), // Specify the rounded corners
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white, // Specify the text color
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Color(0xFF828282),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'or continue with',
                            style: TextStyle(color: Color(0xFF828282)),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Color(0xFF828282),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 50,
                      width: textFieldWidth, // Set the width of the button to match the text fields
                      child: TextButton.icon(
                        onPressed: () {
                          // Add your Google sign in logic here
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 232, 231, 231)), // Specify the color
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0), // Specify the rounded corners
                            ),
                          ),
                        ),
                        icon: SvgPicture.asset(
                          'lib/assets/images/google-icon.svg',
                          height: 24, // Set the height of the SVG icon
                          color: Colors.white, // Specify the color of the SVG icon
                        ),
                        label: Text(
                          'Google',
                          style: TextStyle(
                            color: Colors.black, // Specify the text color
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                 Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'By clicking continue, you agree to our ',
                            style: TextStyle(
                              color: Color(0xFF828282), // Set the color for the first part of the text
                            ),
                          ),
                          TextSpan(
                            text: 'Terms of Service',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Set the color for the second part of the text
                            ),
                          ),
                           TextSpan(
                            text: ' and ',
                            style: TextStyle(
                              color: Color(0xFF828282), // Set the color for the first part of the text
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Set the color for the second part of the text
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don’t have an account?  ',
                              style: TextStyle(
                                color: Color(0xFF828282), // Set the color for the first part of the text
                              ),
                            ),
                            TextSpan(
                              text: ' Signup',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFF36D38), // Set the color for the second part of the text
                              ),
                              recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Navigate to SignUp page
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SignUp()),
                                );
                              },
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                ],
              ),
              
            ),
            // Image in the top-left corner
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                margin: EdgeInsets.only(left: 5, top: 0.0),
                child: Image.asset(
                  'lib/assets/images/logo.png',
                  width: 150, // Adjust the width as needed
                  height: 150, 
                  alignment: Alignment.topLeft,// Adjust the height as needed
                ),
              ),
            ),
          ],
    )
    );
  }
}