import 'package:flutter/material.dart';
import 'classes.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage({@required this.album});
  final Album album;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO CUSTOM SCROLL VIEW ❤️
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: Key(album.title),
              child: Container(
                height: MediaQuery.of(context).size.width,
                child: Image.asset('images/${album.image}'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    album.title,
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    album.artist.name,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    album.releaseYear.toString(),
                    style: TextStyle(fontSize: 14.0),
                  ),
                  Container(
                    height: 900,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
