import 'package:flutter/material.dart';
import 'package:koi_mobile_app/pages/widgets/custombox.dart';
import 'package:koi_mobile_app/pages/widgets/footer.dart';
import 'package:koi_mobile_app/pages/widgets/topbar.dart';

class PostQuestion extends StatefulWidget {
  final Function(String, String) addQuestionCallback;

  const PostQuestion({Key? key, required this.addQuestionCallback})
      : super(key: key);

  @override
  _PostQuestionState createState() => _PostQuestionState();
}

class _PostQuestionState extends State<PostQuestion> {
  String? selectedCourse; // State to hold the selected course
  final TextEditingController topicController = TextEditingController();
  final TextEditingController questionController = TextEditingController();

  final List<String> courses = [
    'General Questions',
    'ICT 725 - UI/UX Design',
    'ICT 741 - Data Forensic',
    'ICT 740 - Applied Cyber Security',
    'ICT 728 - Capstone Project',
    'ICT 712 - Project Management',
    'ICT 708 - Statistics',
  ];

  String? topicError;
  String? questionError;

  void showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

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
                      'Ask a Question',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF25628F),
                      ),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 30),
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
                    Visibility(
                      visible: selectedCourse != null,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 1.0),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                selectedCourse != null
                                    ? 'Post your question for $selectedCourse'
                                    : '',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF25628F),
                                ),
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: selectedCourse != null,
                      child: SizedBox(height: 10),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Divider(
                        color: Color(0xFF828282),
                        thickness: 1.0,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: 330,
                      child: TextField(
                        controller: topicController,
                        decoration: InputDecoration(
                          labelText: 'Topic',
                          errorText: topicError,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: TextField(
                        controller: questionController,
                        maxLines: 8, // Creates a multi-line text area
                        decoration: InputDecoration(
                          hintText: 'Please write your question here.',
                          errorText: questionError,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Color(0xFF25628F),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        height: 50,
                        width: 330,
                        child: ElevatedButton(
                          onPressed: () {
                            String topic = topicController.text;
                            String question = questionController.text;

                            if (topic.isEmpty || question.isEmpty) {
                              showErrorDialog(
                                  'Both topic and question are required.');
                            } else {
                              widget.addQuestionCallback(topic, question);
                              Navigator.pop(context);
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF25628F)), // Specify the color
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Specify the rounded corners
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              'Post Question',
                              style: TextStyle(
                                color: Colors.white, // Specify the text color
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ),
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
