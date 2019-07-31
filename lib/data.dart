import 'models/album.dart';
import 'models/artist.dart';
import 'models/song.dart';

const bananaThreat = Artist(name: 'Banana Threat');
const badApples = Artist(name: 'Bad Apples');
const peachBoys = Artist(name: 'Peach Boys');
const plantainPower = Artist(name: 'Plantain Power');
const grapeToMeetYou = Artist(name: 'Grape To Meet You');
const nellyAvocado = Artist(name: 'Nelly Avocado');

const String demoSongUrl =
    'https://archive.org/download/testmp3testfile/mpthreetest.mp3';

const List<Album> albums = [
  Album(
    artist: bananaThreat,
    image: 'salad-days.png',
    releaseYear: 2018,
    title: 'Salad Days',
    songs: <Song>[
      Song(title: 'Example Song', audioUrl: demoSongUrl),
    ],
  ),
  Album(
    artist: badApples,
    image: 'seeds-in-the-juice.png',
    releaseYear: 2019,
    title: 'Seeds In The Juice',
    songs: <Song>[
      Song(title: 'Example Song', audioUrl: demoSongUrl),
    ],
  ),
  Album(
    artist: peachBoys,
    image: 'fruit-sounds.png',
    releaseYear: 2013,
    title: 'Fruit Sounds',
    songs: <Song>[
      Song(title: 'Example Song', audioUrl: demoSongUrl),
    ],
  ),
  Album(
    artist: plantainPower,
    image: 'great-in-burritos.png',
    releaseYear: 1962,
    title: 'Great In Burritos',
    songs: <Song>[
      Song(title: 'Example Song', audioUrl: demoSongUrl),
    ],
  ),
  Album(
    artist: grapeToMeetYou,
    image: 'vine-if-i-have-to.png',
    releaseYear: 1994,
    title: 'Vine, If I Have To',
    songs: <Song>[
      Song(title: 'Example Song', audioUrl: demoSongUrl),
    ],
  ),
  Album(
    artist: nellyAvocado,
    image: 'ripe-and-round.png',
    releaseYear: 2012,
    title: 'Ripe And Round',
    songs: <Song>[
      Song(title: 'Example Song', audioUrl: demoSongUrl),
    ],
  ),
];
