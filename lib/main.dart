import 'package:flutter/material.dart';
import 'package:tailygram/screens/add_post_screen.dart';
import 'package:tailygram/screens/discover_page_screen.dart';
import 'package:tailygram/screens/home_page_screen.dart';
import 'package:tailygram/screens/login_screen.dart';
import 'package:tailygram/screens/profile_page_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TailyGram',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 47, 16, 100),
        ),
      ),
      routes: {
        '/home': (context) => HomePageScreen(),
        '/add-post': (context) => AddPostScreen(),
        '/explore': (context) => DiscoverScreen(),
        '/profile': (context) => ProfileScreen(),
        '/logout': (context) => LoginScreen(), // or handle logout separately
      },
      home: const LoginScreen(),
    );
  }
}
