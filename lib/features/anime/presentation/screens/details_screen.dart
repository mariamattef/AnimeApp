import 'package:anime/features/anime/presentation/widgets/action_buttons_widget.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/anime.dart';
import '../widgets/content_widget.dart';

class DetailsScreen extends StatelessWidget {
  final Anime anime;
  const DetailsScreen({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    final double topImageHeight = MediaQuery.of(context).size.height * 0.55;
    const double overlappingImageHeight = 180.0;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Rectangle 5.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/card11.png',
                    height: topImageHeight,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  ContentWidget(anime: anime),
                  const SizedBox(height: 100),
                ],
              ),
            ),
            Positioned(
              top: topImageHeight - (overlappingImageHeight / 2.4),
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/Group 15.png',
                  height: overlappingImageHeight,
                  width: 180,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color.fromRGBO(22, 16, 60, 1),
        padding: const EdgeInsets.fromLTRB(24, 25, 24, 24),
        child: const ActionButtonsWidget(),
      ),
    );
  }
}
