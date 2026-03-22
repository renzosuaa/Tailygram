import 'package:flutter/material.dart';
import 'package:tailygram/widgets/nav_bar.dart';
import 'package:tailygram/widgets/profile_card.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
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
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Discover",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 260,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: 20,
                  itemBuilder: (context, index) => const ProfileCard(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
