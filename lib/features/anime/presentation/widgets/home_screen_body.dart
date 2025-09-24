
import 'package:flutter/material.dart';

import 'anime_carousel_widget.dart';
import 'filter_chips_widget.dart';
import 'top_characters_list_widget.dart';
import 'upgrade_plan_sheet_widget.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Where Anime Comes Alive',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF18153F),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.workspace_premium_outlined,
                      color: Color(0xFF5436F8),
                    ),
                    onPressed: () => _showUpgradeSheet(context),
                  ),
                ],
              ),
            ),
            const FilterChipsWidget(),
            const SizedBox(height: 16),
            const AnimeCarouselWidget(),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Top Characters',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 12),
            const TopCharactersListWidget(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void _showUpgradeSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const UpgradePlanSheetWidget(),
    );
  }
}
