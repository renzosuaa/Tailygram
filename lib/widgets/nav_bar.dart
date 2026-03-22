import 'package:flutter/material.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  const NavBar({super.key});

  static const List<Map<String, dynamic>> _navItems = [
    {'icon': Icons.home_outlined, 'label': 'Home', 'route': '/home'},
    {'icon': Icons.add_box_outlined, 'label': 'Add Post', 'route': '/add-post'},
    {'icon': Icons.explore_outlined, 'label': 'Explore', 'route': '/explore'},
    {'icon': Icons.person_2_outlined, 'label': 'Profile', 'route': '/profile'},
    {'icon': Icons.logout_outlined, 'label': 'Logout', 'route': '/logout'},
  ];

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  void _navigate(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 1,
      title: Row(
        children: [
          Image.asset('lib/assets/img/logo2.png', height: 50),
          const SizedBox(width: 8),
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [
                Color.fromARGB(255, 115, 213, 240),
                Color.fromARGB(255, 102, 3, 133),
              ],
            ).createShader(bounds),
            child: const Text(
              "TailyGram",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      actions: [
        LayoutBuilder(
          builder: (context, constraints) {
            final screenWidth = MediaQuery.of(context).size.width;
            final availableWidth = screenWidth - 160;
            final allIconsWidth = _navItems.length * 48.0;
            final showAll = availableWidth >= allIconsWidth;

            if (showAll) {
              return Row(
                children: _navItems
                    .map(
                      (item) => buildIcon(
                        item['icon'] as IconData,
                        () => _navigate(context, item['route'] as String),
                      ),
                    )
                    .toList(),
              );
            }

            return PopupMenuButton<String>(
              icon: const Icon(Icons.menu),
              onSelected: (route) => _navigate(context, route),
              itemBuilder: (context) => _navItems
                  .map(
                    (item) => PopupMenuItem<String>(
                      value: item['route'] as String,
                      child: Row(
                        children: [
                          Icon(
                            item['icon'] as IconData,
                            size: 20,
                            color: Colors.black87,
                          ),
                          const SizedBox(width: 12),
                          Text(item['label'] as String),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            );
          },
        ),
      ],
    );
  }

  Widget buildIcon(IconData icon, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: IconButton(onPressed: onPressed, icon: Icon(icon)),
    );
  }
}
