import 'package:flutter/material.dart';

class KillerBi extends StatelessWidget {

  @override
  final String name = 'Киллер Би';
  final ColorSwatch color = Colors.purpleAccent;
  final String jimage = 'assets/images/Killer_B.png';
  final String description = 'Киллер Би (яп. キラービー, Кираа Бии) — шиноби из Деревни Скрытого Облака. Он является нынешним джинчуурики Восьмихвостого и, в отличие от своих предшественников, он смог подружиться с ним и обратить его силу на пользу Облака. Несмотря на то, что Би ответственен за защиту деревни, он стремится стать величайшим в мире рэпером.';

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
