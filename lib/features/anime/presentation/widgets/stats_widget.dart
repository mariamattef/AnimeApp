
import 'package:flutter/material.dart';

import '../../domain/entities/anime.dart';
import 'stat_item.dart';

class StatsWidget extends StatelessWidget {
  final Anime anime;
  const StatsWidget({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        StatItem(
          icon: Icons.visibility,
          label: '${anime.views} views',
        ),
        StatItem(
          icon: Icons.front_hand_outlined,
          label: '${anime.claps} clap',
        ),
        StatItem(icon: Icons.tv, label: anime.seasons),
      ],
    );
  }
}
