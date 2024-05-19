import 'package:flutter/material.dart';
import 'package:koi_mobile_app/pages/askquestion.dart';
import 'package:koi_mobile_app/pages/viewpastpaper.dart';
import 'package:koi_mobile_app/pages/viewquestion.dart';
import 'package:koi_mobile_app/pages/widgets/custombox.dart';
import 'package:koi_mobile_app/pages/widgets/footer.dart';
import 'package:koi_mobile_app/pages/widgets/topbar.dart';

class PastPapers extends StatefulWidget {
  const PastPapers({Key? key}) : super(key: key);

  @override
  _PastPapersState createState() => _PastPapersState();
}

class _PastPapersState extends State<PastPapers> {
  String? selectedCourse;
  String? selectedYear;
  String? selectedTerm;

  final List<String> courses = [
    'ICT 725 - UI/UX Design',
    'ICT 741 - Data Forensic',
    'ICT 740 - Applied Cyber Security',
    'ICT 728 - Capstone Project',
    'ICT 712 - Project Management',
    'ICT 708 - Statistics',
  ];
  final List<String> years = [
    '2021',
    '2022',
    '2023',
    '2024',
  ];
  final List<String> terms = [
    'Term 1',
    'Term 2',
    'Term 3',
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
                      'Past Papers',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF25628F),
                      ),
                    ),
                    SizedBox(height: 40),
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
                              child: Text("Select an year"),
                            ),
                          ),
                          value: selectedYear,
                          items: years.map((String year) {
                            return DropdownMenuItem<String>(
                              value: year,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0), // Add left padding
                                child: Text(year),
                              ),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              selectedYear = newValue;
                            });
                          },
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
                              child: Text("Select a term"),
                            ),
                          ),
                          value: selectedTerm,
                          items: terms.map((String term) {
                            return DropdownMenuItem<String>(
                              value: term,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0), // Add left padding
                                child: Text(term),
                              ),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              selectedTerm = newValue;
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
                            'Search by Subject/Year/Term',
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
                                      builder: (context) => ViewPastPaper()),
                                );
                              },
                              child: Column(
                                children: [
                                  CustomBox(
                                      headingText:
                                          "ICT 725 - Term 1 - 2020 - Question 01",
                                      subText:
                                          'While UI and UX are sometimes used interchangeably (or lumped together), they represent distinct roles...'),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  CustomBox(
                                      headingText:
                                          "ICT 708 - Term 1 - 2020 - Question 07",
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
        ],
      ),
    );
  }
}
