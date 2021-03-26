import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'unit.dart';
import 'Avatars.dart';

class ConverterRoute extends StatelessWidget {
  final Color color;
  final List<Unit> units;
  final String jimage;
  final String description;
  final List<String> jimages;

  static const List<String> characters = [
    'assets/images/Gaara/Gaara_1.png',
    'assets/images/Gaara/Gaara_full.png',
    'assets/images/Gaara/Gaara_fun.png',
    'assets/images/Yugito/Yugito_1.png',
    'assets/images/Yugito/Yugito_Full.png',
    'assets/images/Yugito/Yugito_fun.png',
    'assets/images/Yagura/Yagura_1.png',
    'assets/images/Yagura/Yagura_full.png',
    'assets/images/Yagura/Yagura_fun.png',
    'assets/images/Roushi/Roushi_1.png',
    'assets/images/Roushi/Roushi_full.png',
    'assets/images/Roushi/Roushi_fun.png',
    'assets/images/Han/Han_1.png',
    'assets/images/Han/Han_full.png',
    'assets/images/Han/Han_fun.png',
    'assets/images/Utakata/Utakata_arrive.png',
    'assets/images/Utakata/Utakata_full.png',
    'assets/images/Utakata/Utakata_fun.png',
    'assets/images/Fu/Fu_1.png',
    'assets/images/Fu/Fu_full.png',
    'assets/images/Fu/Fu_fun.png',
    'assets/images/Killer_B/Killer_B_1.png',
    'assets/images/Killer_B/Killer_B_full.png',
    'assets/images/Killer_B/Killer_B_fun.png',
    'assets/images/Naruto/Naruto_1.png',
    'assets/images/Naruto/Naruto_full.png',
    'assets/images/Naruto/Naruto_fun.png',
    'assets/images/Madara/Madara_Jinchuriki.png',
    'assets/images/Madara/Madara_all.png',
    'assets/images/Madara/Madara_fun.png',
  ];

  const ConverterRoute({
    @required this.color,
    @required this.units,
    @required this.jimage,
    @required this.description,
    @required this.jimages,
  })  : assert(color != null),
        assert(units != null),
        assert(jimage != null),
        assert(description != null),
        assert(jimages != null);

  @override
  Widget build(BuildContext context) {
    List<Widget> avatarslist = [];

    for (int i = 0; i < 3; i++) {
      avatarslist.add(Container(
          width: 390,
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(jimages[i]),
            fit: BoxFit.fill,
          ))));
    }

    return Container(
      color: color,
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) =>
                    avatarslist[index],
                itemCount: avatarslist.length,
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Text(
              description,
              style: TextStyle(fontSize: 20.0),
              overflow: TextOverflow.fade,
            ),
          )),
          Row(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    right: 100,
                    left: 150,
                  ),
                  child: FlatButton(
                      child: Text(
                        'back',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ),
              Container(child: FavouriteApp()),
            ],
          ),
        ],
      ),
    );
  }
}
