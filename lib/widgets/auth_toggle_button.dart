import 'package:flutter/material.dart';

class AuthToggle extends StatefulWidget {
  const AuthToggle({super.key});

  @override
  State<AuthToggle> createState() => _LoginRegisterToggleState();
}

class _LoginRegisterToggleState extends State<AuthToggle> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 40,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 238, 238, 238),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          AnimatedAlign(
            alignment: isLogin ? Alignment.centerLeft : Alignment.centerRight,
            duration: const Duration(milliseconds: 250),
            child: Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 0, 0),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => setState(() => isLogin = true),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isLogin
                            ? const Color.fromARGB(255, 255, 255, 255)
                            : const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => setState(() => isLogin = false),
                  child: Center(
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: !isLogin
                            ? const Color.fromARGB(255, 255, 254, 254)
                            : const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
