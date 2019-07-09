import 'classes.dart';

const zealAndArdor = Artist(
  name: 'Zeal And Ardor',
  image: 'example.jpg',
);

const List<Album> albums = [
  Album(
    artist: zealAndArdor,
    image: 'stranger-fruit.jpg',
    releaseYear: 2018,
    title: 'Stranger Fruit',
    tracks: <Song>[
      Song(title: 'Example Song', audioFile: 'example.mp3'),
      Song(title: 'Example Song 2', audioFile: 'example.mp3'),
      Song(title: 'Example Song 3', audioFile: 'example.mp3'),
      Song(title: 'Example Song 4', audioFile: 'example.mp3'),
    ],
  ),
];
