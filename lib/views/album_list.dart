import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped_models/scoped_media_controls.dart';
import '../widgets/play_pause_button.dart';
import '../widgets/album_list_tile.dart';
import '../data.dart';

class AlbumListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ScopedMediaControls>(builder: (
      context,
      child,
      model,
    ) {
      bool hasActiveSong = model.mediaControls.activeSong != null;
      return Scaffold(
        floatingActionButton: hasActiveSong ? PlayPauseButton() : null,
        appBar: AppBar(
          title: Text("🍎 Apple Music"),
          brightness: Brightness.light,
        ),
        body: ListView.builder(
          itemCount: albums.length,
          itemBuilder: (BuildContext context, int index) {
            return AlbumListTile(album: albums[index]);
          },
        ),
      );
    });
  }
}
