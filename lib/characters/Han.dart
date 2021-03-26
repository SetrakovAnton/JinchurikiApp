import 'package:flutter/material.dart';

class Han extends StatelessWidget {

  @override
  final String name = 'Хан';
  final ColorSwatch color = Colors.white;
  final String jimage = 'assets/images/Han.png';
  final String description = 'Хан (яп. ハン, Хан) был шиноби из Ивагакуре и Джинчуурики Пятихвостого.Он был показан весьма мирным и дружелюбным человеком при встрече с Наруто Узумаки.В какой-то момент он был захвачен Акацуки с целью извлечь хвостатого из его тела, после чего он и умер.';

  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            name,
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          backgroundColor: color,
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(jimage),
              Text(description),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: FlatButton(
                    child: Text('back'),
                    color:Colors.blue,
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
