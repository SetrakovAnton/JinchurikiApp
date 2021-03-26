import 'package:flutter/material.dart';

class Gaara extends StatelessWidget {
  @override
  final String name = 'Гаара';
  final ColorSwatch color = Colors.brown;
  final String jimage = 'assets/images/Gaara.png';
  final String description =
      'Гаара (яп. 我愛羅) — шиноби Деревни Скрытого Песка. Еще до рождения он был превращен в джинчуурики Однохвостого Шукаку старейшиной Деревни Песка Чиё и своим отцом Расой. После поражения в битве с Наруто Узумаки — таким же джинчуурики, нашедшим силу в дружбе — Гаара решает подражать ему. Несколько лет спустя он становится Пятым Казекаге (яп. 五代目風影, Годаймэ Казэкаге, досл. Пятая Тень Ветра).';

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
