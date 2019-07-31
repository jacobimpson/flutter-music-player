import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../widgets/play_pause_button.dart';
import '../scoped_models/scoped_media_controls.dart';
import '../models/album.dart';
import '../models/song.dart';

class AlbumView extends StatelessWidget {
  const AlbumView({@required this.album});
  final Album album;

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
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.width - 40.0,
              backgroundColor: Colors.transparent,
              brightness: Brightness.dark,
              iconTheme: IconThemeData(color: Colors.white),
              flexibleSpace: Flex(
                direction: Axis.vertical,
                children: [
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          child: Image.asset(
                            'images/${album.image}',
                            fit: BoxFit.cover,
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.black12,
                                Colors.black12,
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          album.title,
                          style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -2.0,
                          ),
                        ),
                        Text(
                          "Album by ${album.artist.name} • ${album.releaseYear.toString()}",
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: album.songs
                        .map(
                          (Song song) => ListTile(
                            title: Text(song.title),
                            subtitle: Text(album.artist.name),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            onTap: () {
                              model.play(song);
                            },
                          ),
                        )
                        .toList(),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
