import 'package:flutter/material.dart';

class Fuu extends StatelessWidget {

  @override
  final String name = 'Фуу';
  final ColorSwatch color = Colors.indigo;
  final String jimage = 'assets/images/Fu.png';
  final String description = 'Фуу (яп. フウ, Фуу) — была куноичи Деревни Скрытого Водопада и Джинчуурики семихвостого Чоумея.По словам Дейдары, Фуу ненавидела весь мир из-за того, что жители её деревни ничего не сделали чтобы её спасти, поэтому, девушка отреклась от человечности. Она была захвачена Акацуки, её хвостатый зверь был извлечён и запечатан, что стало причиной её смерти.';

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
