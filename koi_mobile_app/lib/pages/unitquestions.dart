import 'package:flutter/material.dart';
import 'package:koi_mobile_app/pages/askquestion.dart';
import 'package:koi_mobile_app/pages/viewquestion.dart';
import 'package:koi_mobile_app/pages/widgets/custombox.dart';
import 'package:koi_mobile_app/pages/widgets/footer.dart';
import 'package:koi_mobile_app/pages/widgets/topbar.dart';

class UnitQuestions extends StatefulWidget {
  const UnitQuestions({Key? key}) : super(key: key);

  @override
  _UnitQuestionsState createState() => _UnitQuestionsState();
}

class _UnitQuestionsState extends State<UnitQuestions> {
  String? selectedCourse;

  final List<String> courses = [
    'ICT 725 - UI/UX Design',
    'ICT 741 - Data Forensic',
    'ICT 740 - Applied Cyber Security',
    'ICT 728 - Capstone Project',
    'ICT 712 - Project Management',
    'ICT 708 - Statistics',
  ];

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
                      'Unit Questions',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF25628F),
                      ),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Color(0xFF25628F),
                            ),
                          ),
                          prefixIcon:
                              Icon(Icons.search, color: Color(0xFF25628F)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color:
                                  Color(0xFF828282)), // Add border decoration
                          borderRadius:
                              BorderRadius.circular(8.0), // Add border radius
                        ),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          underline: Container(),
                          hint: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 10.0), // Add left padding
                              child: Text("Select a subject"),
                            ),
                          ),
                          value: selectedCourse,
                          items: courses.map((String course) {
                            return DropdownMenuItem<String>(
                              value: course,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0), // Add left padding
                                child: Text(course),
                              ),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              selectedCourse = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 10.0),
                      child: Row(
                        children: [
                          Text(
                            'Recently asked by other students',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF25628F),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Divider(
                        color: Color(0xFF828282),
                        thickness: 1.0,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 300, // Set the desired fixed height
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ViewQuestion()),
                                );
                              },
                              child: Column(
                                children: [
                                  CustomBox(
                                      headingText:
                                          "ICT 725 - What is the difference between UX and UI?",
                                      subText:
                                          'While UI and UX are sometimes used interchangeably (or lumped together), they represent distinct roles...'),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  CustomBox(
                                      headingText:
                                          "ICT 708 - What are the meanings of Mean, Mode and Median?",
                                      subText:
                                          'Can anyone help me to uderstand the meanings of these terms. I find different meanings in different sources but cannot get a clear idea of these terms')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(), // Pushes the footer to the bottom
              Footer(),
            ],
          ),
          Positioned(
            bottom: 80,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AskQuestion()),
                );
              },
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Didn’t find your solution? ',
                      style: TextStyle(
                        color: Color(0xFF828282),
                        fontSize:
                            16, // Set the color for the first part of the text
                      ),
                    ),
                    TextSpan(
                      text: 'Ask A Question',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF36D38),
                        fontSize:
                            18, // Set the color for the second part of the text
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
