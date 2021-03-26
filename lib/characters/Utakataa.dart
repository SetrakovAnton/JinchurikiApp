import 'package:flutter/material.dart';

class Utakataa extends StatelessWidget {

  @override
  final String name = 'Утаката';
  final ColorSwatch color = Colors.lightBlueAccent;
  final String jimage = 'assets/images/Utakataa.png';
  final String description = 'Утаката (яп. ウタカタ, Утаката) был ниндзя-отступником из Деревни Скрытого Тумана и джинчуурики Шестихвостого.В аниме его персонаж представлен холодным и неприступным. Так он — довольно ленивый и безразличный ко всему человек.По версии аниме, в Деревне Скрытого Тумана Утакату считали оружием деревни и поэтому, как и ко всем джинчуурики, к нему относились плохо.Позже Акацуки извлекают из него Биджу и Утаката умирает.';

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
