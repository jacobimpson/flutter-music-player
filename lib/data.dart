import 'classes.dart';

const zealAndArdor = Artist(name: 'Melon Threat');

const List<Album> albums = [
  Album(
    artist: zealAndArdor,
    image: 'stranger-fruit.jpg',
    releaseYear: 2018,
    title: 'Fruit Salad Days',
    tracks: <Song>[
      Song(title: 'Example Song', audioFile: 'example.mp3'),
      Song(title: 'Example Song 2', audioFile: 'example.mp3'),
      Song(title: 'Example Song 3', audioFile: 'example.mp3'),
      Song(title: 'Example Song 4', audioFile: 'example.mp3'),
    ],
  ),
];
