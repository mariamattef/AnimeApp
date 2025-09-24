import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> icons = [
      'assets/icons/home-2.svg',
      'assets/icons/Group1.svg',
      'assets/icons/search-normal.svg',
      'assets/icons/Group.svg',
      'assets/icons/setting.svg',
    ];
    const List<String> labels = [
      'Home',
      'Library',
      'Search',
      'Browse',
      'Profile',
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: 80,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(icons.length, (index) {
          bool isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () => onItemTapped(index),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color(0xFF5436F8)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: isSelected
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          icons[index],
                          width: 28,
                          height: 28,
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          labels[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  : SvgPicture.asset(
                      icons[index],
                      width: 28,
                      height: 28,
                      colorFilter: ColorFilter.mode(
                        Colors.grey.shade400,
                        BlendMode.srcIn,
                      ),
                    ),
            ),
          );
        }),
      ),
    );
  }
}
