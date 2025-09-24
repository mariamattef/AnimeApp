import 'package:flutter/material.dart';

import '../../domain/entities/character.dart';

class TopCharactersListWidget extends StatelessWidget {
  const TopCharactersListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 16),
        itemCount: topCharacters.length,
        itemBuilder: (context, index) {
          final character = topCharacters[index];
          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(character.imageUrl),
                ),
                const SizedBox(height: 8),
                Text(
                  character.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFF18153F),
                  ),
                ),
                Text(
                  character.animeTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xFFACACAC),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
