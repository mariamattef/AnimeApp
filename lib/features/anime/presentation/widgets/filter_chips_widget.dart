import 'package:flutter/material.dart';

class FilterChipsWidget extends StatelessWidget {
  const FilterChipsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> filters = [
      'All',
      'Popular',
      'Trending',
      'New Releases',
      'Top Rated',
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16),
      child: Row(
        children: List.generate(filters.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ChoiceChip(
              padding:EdgeInsets.symmetric(horizontal: 10),
              label: Text(filters[index]),
              selected: index == 0,
              onSelected: (selected) {},
              backgroundColor: Colors.white,
              selectedColor: const Color(0xFF5436F8),
              labelStyle: TextStyle(
                color: index == 0 ? Colors.white : Color(0xFF5436F8),
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
              shape: StadiumBorder(side: BorderSide(color: Colors.grey[200]!)),
              showCheckmark: false,
            ),
          );
        }),
      ),
    );
  }
}
