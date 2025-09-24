import 'package:flutter/material.dart';

import '../../domain/entities/anime.dart';

class GenresWidget extends StatelessWidget {
  final Anime anime;
  const GenresWidget({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: anime.genres
          .map(
            (genre) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 0.24),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                genre,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
