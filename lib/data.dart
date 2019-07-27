import 'models/album.dart';
import 'models/artist.dart';
import 'models/song.dart';

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
    songs: <Song>[
      Song(title: 'Example Song', audioFile: 'example.mp3'),
      Song(title: 'Example Song ', audioFile: 'example.mp3'),
      Song(title: 'Example Song ', audioFile: 'example.mp3'),
      Song(title: 'Example Song ', audioFile: 'example.mp3'),
      Song(title: 'Example Song', audioFile: 'example.mp3'),
      Song(title: 'Example Song ', audioFile: 'example.mp3'),
      Song(title: 'Example Song ', audioFile: 'example.mp3'),
      Song(title: 'Example Song ', audioFile: 'example.mp3'),
    ],
  ),
];
