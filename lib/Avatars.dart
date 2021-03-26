import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class FavouriteApp extends StatefulWidget {
  @override
  _FavouriteAppState createState() => _FavouriteAppState();
}

class _FavouriteAppState extends State<FavouriteApp> {
  int _likes = 200;
  bool _isFavourited = false;

  Widget build(BuildContext context) {
    void _pressFavourited() {
      setState(() {
        if (_isFavourited) {
          _isFavourited = false;
          _likes = _likes - 1;
        } else {
          _isFavourited = true;
          _likes = _likes + 1;
        }
      });
    }

    return Column(
      children: [
        Container(
          child: IconButton(
            color: Colors.black,
            icon: (_isFavourited
                ? Icon(
                    Icons.favorite,
                  )
                : Icon(Icons.favorite_border)),
            onPressed: () {
              _pressFavourited();
            },
          ),
        ),
        SizedBox(
          width: 40,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              '$_likes',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
