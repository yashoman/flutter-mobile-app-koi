import 'package:flutter/material.dart';
import 'package:koi_mobile_app/pages/postquestion.dart';
import 'package:koi_mobile_app/pages/postreview.dart';
import 'package:koi_mobile_app/pages/viewquestion.dart';
import 'package:koi_mobile_app/pages/widgets/custombox.dart';
import 'package:koi_mobile_app/pages/widgets/footer.dart';
import 'package:koi_mobile_app/pages/widgets/topbar.dart';

class ViewReview extends StatefulWidget {
  const ViewReview({Key? key}) : super(key: key);

  @override
  _ViewReviewState createState() => _ViewReviewState();
}

class _ViewReviewState extends State<ViewReview> {
  List<List<String>> questions = [];

  @override
  void initState() {
    super.initState();
    // Add initial questions to the list
    questions.add([
      "Important subject for future developers",
      "While UI and UX are sometimes used interchangeably (or lumped together), they represent distinct roles..."
    ]);
    questions.add([
      "Well structured and tutorials are very helpful",
      "With today’s modern day tools there can be an overwhelming amount of tools to choose from to build your own website..."
    ]);
  }

  void addQuestion(String topic, String question) {
    setState(() {
      questions.insert(0, [topic, question]); // Add new questions at the top
    });
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
                height: 150, // Fixed space between top of screen and the text
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Subject Reviews',
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
                          horizontal: 40.0, vertical: 10.0),
                      child: Row(
                        children: [
                          Text(
                            'Recently added reviews',
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
                      height: 400, // Set the desired fixed height
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            for (var question in questions) ...[
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
                                      headingText: question[0],
                                      subText: question[1],
                                      showStars: true,
                                    ),
                                    SizedBox(height: 15),
                                  ],
                                ),
                              ),
                            ],
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
            child: FloatingActionButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostReview(
                      addQuestionCallback: addQuestion,
                    ),
                  ),
                );
              },
              backgroundColor: Color(0xFF2EC0CD),
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
