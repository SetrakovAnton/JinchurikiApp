import 'package:flutter/material.dart';

class Ugito extends StatelessWidget {

  @override
  final String name = 'Югито';
  final ColorSwatch color = Colors.blue;
  final String jimage = 'assets/images/Yugito.png';
  final String description = 'Югито Нии (яп. 二位ユギト, Нии Югито) была джоунином Кумогакуре и джинчуурики Двухвостого.Югито стала Джинчуурики Двухвостого в возрасте двух лет.Кроме того, как было сказано ранее, она была твёрдым, и благоразумным членом своей команды.Позже, Двухвостый был извлечён из её тела, что привело к её смерти.';


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
