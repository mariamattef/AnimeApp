import 'package:flutter/material.dart';

import 'features/anime/presentation/screens/home_screen.dart';

void main() {
  runApp(const AnimeApp());
}

class AnimeApp extends StatelessWidget {
  const AnimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFF6A5AE0),
        scaffoldBackgroundColor: const Color(0xFFF3F4F8),
        fontFamily: 'Raleway',
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
