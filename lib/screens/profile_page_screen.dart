import 'package:flutter/material.dart';
import 'package:tailygram/widgets/input_fields.dart';
import 'package:tailygram/widgets/nav_bar.dart';
import 'package:tailygram/widgets/submit_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                          "Pet Profile",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Center(
                          child: ClipOval(
                            child: Image.asset(
                              "lib/assets/img/profile_cat1.jpg",
                              height: 110,
                            ),
                          ),
                        ),
                        InputField(
                          label: "Avatar URL",
                          hint: "https://example/cpm/avatar.jpg",
                        ),

                        SizedBox(height: 15),
                        InputField(
                          label: "Pet Name *",
                          hint: "Enter pet's name",
                        ),
                        InputField(
                          label: "Species *",
                          hint: "eg. Cat, Dog, Rabbit",
                        ),
                        InputField(label: "Breed *", hint: "Enter breed"),
                        InputField(label: "Age (years) *", hint: "Enter age"),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: SubmitButton(
                            func: () => {},
                            label: "Save Profile",
                            fill_color: Colors.black87,
                            font_color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
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
