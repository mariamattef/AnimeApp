class Anime {
  final String title;
  final String imageUrl; 
  final String description;
  final double rating;
  final List<String> genres;
  final String seasons;
  final String views;
  final String claps;

  Anime({
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.rating,
    required this.genres,
    required this.seasons,
    required this.views,
    required this.claps,
  });
}

final List<Anime> popularAnime = [
  Anime(
    title: 'Demon Slayer',
    imageUrl: 'assets/images/card11.png', 
    description: 'Kimetsu no Yaiba follows a young boy on his quest...',
    rating: 5.0,
    genres: ['Dark Fantasy', 'Action', 'Adventure'],
    seasons: '4 Seasons',
    views: '2.3M',
    claps: '2K',
  ),
  Anime(
    title: 'Detective Conan',
    imageUrl: 'assets/images/card1.png', 
    description: 'A high school detective is trapped in a child\'s body...',
    rating: 5.0,
    genres: ['Mystery', 'Case Closed', 'Adventure'],
    seasons: '35 Seasons',
    views: '10.5M',
    claps: '15K',
  ),
  Anime(
    title: 'Hunter x Hunter',
    imageUrl: 'assets/images/card1.png', 
    description: 'Gon Freecss aims to become a Hunter to find his father...',
    rating: 5.0,
    genres: ['Adventure', 'Fantasy', 'Action'],
    seasons: '6 Seasons',
    views: '8.2M',
    claps: '12K',
  ),
];
