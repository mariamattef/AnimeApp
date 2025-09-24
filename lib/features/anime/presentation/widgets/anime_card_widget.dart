import 'package:flutter/material.dart';

import '../../domain/entities/anime.dart';
import '../screens/details_screen.dart';

class AnimeCardWidget extends StatelessWidget {
  final Anime anime;
  const AnimeCardWidget({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final demonSlayerAnime = popularAnime.firstWhere(
          (a) => a.title == 'Demon Slayer',
        );
        if (anime.title == 'Demon Slayer') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(anime: demonSlayerAnime),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Details page for ${anime.title} is not implemented.',
              ),
            ),
          );
        }
      },
      child: Container(
        width: 180,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    anime.imageUrl,
                    height: 220,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color(0xFF5436F8),
                          size: 12,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          anime.rating.toString(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  anime.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color(0xFF18153F),
                  ),
                ),
                Text(
                  anime.genres.first,

                  textAlign: TextAlign.center,

                  style: const TextStyle(
                    color: Color(0xFFA9A9A9),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
