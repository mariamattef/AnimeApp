import 'package:flutter/material.dart';

class StatItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const StatItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.white70, size: 18,),
        const SizedBox(width: 8),
        Text(
          label,
          style: const TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontSize: 13,
            fontWeight: FontWeight.w400,
            
          ),
        ),
      ],
    );
  }
}
