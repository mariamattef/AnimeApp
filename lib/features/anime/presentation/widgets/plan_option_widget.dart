import 'package:flutter/material.dart';

class PlanOptionWidget extends StatelessWidget {
  final String title;
  final String price;
  final String groupValue;
  final String value;
  final ValueChanged<String?> onChanged;

  const PlanOptionWidget({
    super.key,
    required this.title,
    required this.price,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = groupValue == value;
    return GestureDetector(
      onTap: () => onChanged(value),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected
              ? const Color(0xFF18153F).withAlpha((255 * 1).round())
              : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/Files & Folders 3 1.png',
              height: 108,
              width: 108,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: price.split(' /')[0]),
                        TextSpan(
                          text: ' /${price.split(' /')[1]}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFA49AD8),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Include Family Sharing',
                    style: TextStyle(
                      color: Color(0xFFA49AD8),
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Radio<String>(
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
              activeColor: const Color(0xFF5436F8),
            ),
          ],
        ),
      ),
    );
  }
}
