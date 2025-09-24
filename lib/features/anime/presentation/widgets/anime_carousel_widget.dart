
import 'package:flutter/material.dart';

import '../../domain/entities/anime.dart';
import 'anime_card_widget.dart';

class AnimeCarouselWidget extends StatelessWidget {
  const AnimeCarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemCount: popularAnime.length,
        itemBuilder: (context, index) {
          final anime = popularAnime[index];
          return AnimeCardWidget(anime: anime);
        },
      ),
    );
  }
}
