import 'package:flutter/material.dart';
import 'package:tailygram/widgets/nav_bar.dart';
import 'package:tailygram/widgets/submit_button.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFF5F3FA), Color(0xFFE8E7FF), Color(0xFFDCE0FF)],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  bottom: 15,
                  left: 8,
                  right: 8,
                ),
                child: Card(
                  elevation: 4,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Create Post",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                "lib/assets/img/profile_cat1.jpg",
                                height: 40,
                              ),
                            ),
                            SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Andre",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                                Text(
                                  "Persian | Cat",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Divider(
                          color: const Color.fromARGB(255, 219, 216, 216),
                          thickness: 1,
                          indent: 16,
                          endIndent: 16,
                          height: 20,
                        ),
                        SizedBox(height: 15),
                        Text(
                          "What's Happening?",
                          style: TextStyle(
                            fontWeight: FontWeight(700),
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 200,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextField(
                            maxLines: null,
                            expands: false,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Share your pet's adventure...",
                              hintStyle: TextStyle(fontSize: 13),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 8,
                              ),
                            ),
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Add Image",
                          style: TextStyle(
                            fontWeight: FontWeight(700),
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextField(
                            maxLines: 1,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Page Image URL",
                              hintStyle: TextStyle(fontSize: 13),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 8,
                              ),
                            ),
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Expanded(
                              child: SubmitButton(
                                func: () => {},
                                fill_color: Colors.white,
                                font_color: Colors.black87,
                                label: "Cancel",
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: SubmitButton(
                                func: () => {},
                                fill_color: Colors.black87,
                                font_color: Colors.white,
                                label: "Post",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
