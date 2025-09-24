import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../domain/entities/anime.dart';
import 'genres_widget.dart';
import 'stats_widget.dart';

class ContentWidget extends StatelessWidget {
  final Anime anime;
  const ContentWidget({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 100),
          GenresWidget(anime: anime),
          const SizedBox(height: 15),
          Divider(
            color: Color.fromRGBO(116, 114, 114, 0.48),
            thickness: 1,
            indent: 24,
            endIndent: 24,
          ),
          const SizedBox(height: 15),
          StatsWidget(anime: anime),
          const SizedBox(height: 6),
          const Divider(
            color: Color.fromRGBO(116, 114, 114, 0.48),
            thickness: 1,
            indent: 24,
            endIndent: 24,
          ),
          const SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: SvgPicture.asset('assets/icons/Vector.svg', height: 30),
              ),
              Expanded(
                child: Text(
                  // 'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
                  '${anime.title}: ${anime.description}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white70),
                ),
              ),
              const SizedBox(width: 24.0 + 30.0),
            ],
          ),
        ],
      ),
    );
  }
}
