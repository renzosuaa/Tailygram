import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(9),
      child: SizedBox(
        width: 600,
        child: Card(
          elevation: 4,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image(
                        image: AssetImage("lib/assets/img/profile_cat1.jpg"),
                        height: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Andre",
                            style: TextStyle(
                              fontWeight: FontWeight(700),
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            "10 minutes ago.",
                            style: TextStyle(
                              fontSize: 11,
                              color: Color.fromARGB(80, 0, 0, 0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                    top: 15,
                    right: 8,
                    bottom: 10,
                  ),
                  child: Text("Hello Everyone"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(66, 248, 246, 246),
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "lib/assets/img/post1.jpg",
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 200,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite, color: Colors.redAccent),
                    ),
                    SizedBox(width: 8),
                    Text("123 likes"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
