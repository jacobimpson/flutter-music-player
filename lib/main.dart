import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'scoped_models/scoped_media_controls.dart';
import 'data.dart';
import 'theme.dart';
import 'views/album_list.dart';
import 'views/album.dart';
import 'models/album.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return ScopedModel<ScopedMediaControls>(
      model: ScopedMediaControls(),
      child: MaterialApp(
        title: '🍎 Apple Music',
        home: AlbumListView(),
        routes: getAlbumRoutes(),
        theme: theme,
      ),
    );
  }
}

Map<String, WidgetBuilder> getAlbumRoutes() {
  Map<String, WidgetBuilder> routes = Map<String, WidgetBuilder>();
  albums.forEach((Album album) {
    routes[album.title] = (BuildContext context) => AlbumView(album: album);
  });
  return routes;
}
