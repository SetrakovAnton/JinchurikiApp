import 'package:flutter/material.dart';

class Roushi extends StatelessWidget {

  @override
  final String name = 'Роуши';
  final ColorSwatch color = Colors.red;
  final String jimage = 'assets/images/Roushi.png';
  final String description = 'Роуши (яп. 老紫, Роощи) был шиноби из Скрытого Камня, а также джинчуурики Четёрыххвостого.Сон Гоку отметил, что Роуши такой же упрямый старик, как Ооноки, Третий Цучикаге.Роуши стал Джинчуурики Сон Гоку за сорок лет до начала Четвёртой Мировой Войны Шиноби, к тому времени будучи ещё молодым человеком.Позже он скончался в результате извлечения из его тела Четырёххвостого.';

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
