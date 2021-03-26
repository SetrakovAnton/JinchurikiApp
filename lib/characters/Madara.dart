import 'package:flutter/material.dart';

class Madara extends StatelessWidget {

  @override
  final String name = 'Мадара';
  final ColorSwatch color = Colors.brown;
  final String jimage = 'assets/images/Madara.png';
  final String description = 'Мадара Учиха (яп. うちはマダラ, Учиха Мадара) был легендарным лидером клана Учиха. Он основал Деревню Скрытого Листа вместе со своим другом и соперником, Хаширамой Сенджу, с намерением положить начало мирной эпохе. Когда они двое разошлись во взглядах, как именно достичь этого мира, то сразились за главенство над деревней в битве, которая завершилась смертью Мадары. Тем не менее, впоследствии, он переписал свою смерть и стал скрываться от мира, чтобы продолжать работу над своими планами. Как оказалось, Мадара был не в состоянии завершить их на протяжении своей природной жизни, поэтому доверил свои знания и стремления Обито Учихе незадолго до своей настоящей смерти. Года спустя, Мадара был воскрешен, но в конце концов встретил окончательный провал своих планов, прежде чем повторно умереть.';

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
