import 'models/album.dart';
import 'models/artist.dart';
import 'models/song.dart';

const zealAndArdor = Artist(
  name: 'Zeal And Ardor',
  image: 'example.jpg',
);

const String demoSongUrl =
    'https://archive.org/download/testmp3testfile/mpthreetest.mp3';

const List<Album> albums = [
  Album(
    artist: zealAndArdor,
    image: 'stranger-fruit.jpg',
    releaseYear: 2018,
    title: 'Stranger Fruit',
    songs: <Song>[
      Song(title: 'Example Song', audioUrl: demoSongUrl),
      Song(title: 'Example Song ', audioUrl: demoSongUrl),
      Song(title: 'Example Song ', audioUrl: demoSongUrl),
      Song(title: 'Example Song ', audioUrl: demoSongUrl),
      Song(title: 'Example Song', audioUrl: demoSongUrl),
      Song(title: 'Example Song ', audioUrl: demoSongUrl),
      Song(title: 'Example Song ', audioUrl: demoSongUrl),
      Song(title: 'Example Song ', audioUrl: demoSongUrl),
    ],
  ),
];
