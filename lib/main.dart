import 'package:flutter/material.dart';
import 'package:music_player/album_view.dart';
import 'album_list_view.dart';
import 'classes.dart';
import 'data.dart';

void main() => runApp(AppleMusic());

class AppleMusic extends StatefulWidget {
  @override
  _AppleMusicState createState() => _AppleMusicState();
}

class _AppleMusicState extends State<AppleMusic> {
  bool isPlaying = false;

  Widget build(BuildContext context) {
    final FloatingActionButton floatingActionButton = FloatingActionButton(
      onPressed: () => setState(() => isPlaying = !isPlaying),
      child: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
    );

    return MaterialApp(
      title: '🍎 Apple Music',
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
      home: AlbumListView(floatingActionButton: floatingActionButton),
      routes: getRoutes(floatingActionButton: floatingActionButton),
    );
  }
}

Map<String, WidgetBuilder> getRoutes(
    {FloatingActionButton floatingActionButton}) {
  Map<String, WidgetBuilder> routes = Map<String, WidgetBuilder>();
  albums.forEach((Album album) {
    routes[album.title] = (_) => AlbumView(
          album: album,
          floatingActionButton: floatingActionButton,
        );
  });
  return routes;
}
