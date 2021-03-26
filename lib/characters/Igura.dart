import 'package:flutter/material.dart';

class Iguro extends StatelessWidget {

  @override
  final String name = 'Ягура';
  final ColorSwatch color = Colors.pinkAccent;
  final String jimage = 'assets/images/Yagura.png';
  final String description = 'Ягура Каратачи (яп. 枸橘やぐら, Каратачи Ягура) был Джинчуурики Треххвостого и Четвёртым Мизукаге (яп. 四代目水影, Ёндайме Мизукаге, досл. "Четвёртая Тень Воды") Деревни Скрытого Тумана. Он стал запоминающейся фигурой в истории деревни в основном по своему кровавому и деспотичному правлению, во время которого Киригакуре укрепила свою дурную славу "Деревни Кровавого Тумана".В итоге был побежден Итачи.Погиб после извлечения Треххвостого.';



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
