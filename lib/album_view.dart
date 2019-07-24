import 'package:flutter/material.dart';
import 'classes.dart';

class AlbumView extends StatelessWidget {
  const AlbumView({
    @required this.album,
    @required this.floatingActionButton,
  });

  final Album album;
  final FloatingActionButton floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButton,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.width - 18.0,
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
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
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
                      Text("Album by ${album.artist.name}"),
                    ],
                  ),
                ),
                Column(
                  children: album.tracks
                      .map(
                        (Song track) => ListTile(
                          title: Text(track.title),
                          subtitle: Text(album.artist.name),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0,
                          ),
                          onTap: () {},
                        ),
                      )
                      .toList(),
                )
              ],
            ),
          ),
        ],
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: <Widget>[
        //     Hero(
        //       tag: Key(album.title),
        //       child: Container(
        //         height: MediaQuery.of(context).size.width,
        //         child: Image.asset('images/${album.image}'),
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.all(16.0),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: <Widget>[
        //           Text(
        //             album.title,
        //             style: TextStyle(
        //               fontSize: 28.0,
        //               fontWeight: FontWeight.bold,
        //             ),
        //           ),
        //           Text(
        //             album.artist.name,
        //             style: TextStyle(fontSize: 16.0),
        //           ),
        //           SizedBox(height: 4.0),
        //           Text(
        //             album.releaseYear.toString(),
        //             style: TextStyle(fontSize: 14.0),
        //           ),
        //           Container(
        //             height: 900,
        //           )
        //         ],
        //       ),
        //     )
        //   ],
        // ),
      ),
    );
  }
}
