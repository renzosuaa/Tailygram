import 'package:flutter/material.dart';
import 'package:tailygram/screens/home_page_screen.dart';
import 'package:tailygram/widgets/auth_toggle_button.dart';
import 'package:tailygram/widgets/input_fields.dart';
import 'package:tailygram/widgets/submit_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF4B2C72), Color(0xFF5F3DCC), Color(0xFF3A50E0)],
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Tailygram",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight(800),
                    color: Color(0xFFC0D6FF),
                  ),
                ),
                Text(
                  "Connect with pets around the world.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight(400),
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                SizedBox(height: 30),
                AuthToggle(),
                SizedBox(height: 30),
                SizedBox(
                  width: 600,
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                            child: Text(
                              "Welcome Back",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight(800),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              bottom: 8.0,
                            ),
                            child: Text(
                              "Login to your pet's account",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight(400),
                              ),
                            ),
                          ),
                          InputField(
                            label: "Username",
                            hint: "Enter your username",
                          ),
                          InputField(
                            label: "Password",
                            hint: "Enter you password",
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SubmitButton(
                              fill_color: Colors.black87,
                              font_color: Colors.white,
                              func: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePageScreen(),
                                    //builder: (context) => AddPostScreen(),
                                  ),
                                );
                              },
                              label: "Login",
                            ),
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
      ),
    );
  }
}
