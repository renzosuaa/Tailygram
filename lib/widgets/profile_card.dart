import 'package:flutter/material.dart';
import 'package:tailygram/widgets/submit_button.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF4B2C72),
                  Color(0xFF5F3DCC),
                  Color(0xFF3A50E0),
                ],
              ),
            ),
            alignment: Alignment.center,
            child: ClipOval(
              child: SizedBox(
                height: 60,
                width: 60,
                child: Image.asset(
                  "lib/assets/img/profile_cat1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Andre",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Cat | Puspin | 2 years old",
                        style: TextStyle(
                          fontSize: 11,
                          color: Color.fromARGB(120, 0, 0, 0),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Love sleeping and going to the beach!!",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                  child: SubmitButton(
                    func: () => {},
                    label: "Follow",
                    fill_color: Colors.black87,
                    font_color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
