
class AnimeCharacter {
  final String name;
  final String animeTitle;
  final String imageUrl; 

  AnimeCharacter({
    required this.name,
    required this.animeTitle,
    required this.imageUrl,
  });
}

final List<AnimeCharacter> topCharacters = [
  AnimeCharacter(
    name: 'Gon Freecss',
    animeTitle: 'Hunter x Hunter',
    imageUrl: 'assets/images/character1.png',
  ),
  AnimeCharacter(
    name: 'Naruto Uzumaki',
    animeTitle: 'Naruto',
    imageUrl: 'assets/images/character2.png',
  ),
  AnimeCharacter(
    name: 'Luffy',
    animeTitle: 'One Piece',
    imageUrl: 'assets/images/character.png',
  ),
  AnimeCharacter(
    name: 'Tanjiro',
    animeTitle: 'Demon Slayer',
    imageUrl: 'assets/images/character1.png',
  ),
];
