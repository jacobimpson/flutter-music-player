import 'package:flutter/material.dart';
import 'album_list_tile.dart';
import 'data.dart';

class AlbumListView extends StatelessWidget {
  const AlbumListView({
    Key key,
    @required this.floatingActionButton,
  }) : super(key: key);

  final FloatingActionButton floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButton,
      appBar: AppBar(title: Text("🍎 Apple Music")),
      body: ListView.builder(
        itemCount: albums.length,
        itemBuilder: (BuildContext context, int index) {
          return AlbumListTile(album: albums[index]);
        },
      ),
    );
  }
}
