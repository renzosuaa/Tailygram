import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.func,
    required this.label,
    required this.fill_color,
    required this.font_color,
  });
  final Function func;
  final String label;
  final Color fill_color;
  final Color font_color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          func();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: fill_color,
          foregroundColor: font_color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.symmetric(vertical: 10),
        ),
        child: Text(label, style: TextStyle(fontSize: 14)),
      ),
    );
  }
}
