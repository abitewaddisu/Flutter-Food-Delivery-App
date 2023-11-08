import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String label;
  final bool isActive;
  const CustomChip({super.key, required this.label, this.isActive=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 5),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
      decoration: BoxDecoration(
        color: !isActive ? Colors.white : Colors.amber,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Text(label, style: TextStyle(fontSize: 18, color: isActive ? Colors.white : Colors.grey, fontWeight: isActive ? FontWeight.bold : FontWeight.normal)),
    );
  }
}