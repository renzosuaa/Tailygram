import 'package:flutter/material.dart';
import 'package:tailygram/widgets/nav_bar.dart';
import 'package:tailygram/widgets/post.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

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
        child: Center(
          child: Container(
            color: const Color(0xF8F8F8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Newsfeed",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight(700),
                        ),
                      ),
                    ),
                    Post(),
                    Post(),
                    Post(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
