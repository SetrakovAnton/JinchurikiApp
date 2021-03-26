import 'package:flutter/material.dart';
import 'category.dart';
import 'unit.dart';

final _backgroundImage = 'assets/images/Jinchuriki.jpg';

class JinchurikiRoute extends StatelessWidget {
  const JinchurikiRoute();

  static const List<String> _jname = [
    'Гаара',
    'Югито',
    'Ягура',
    'Роуши',
    'Хан',
    'Утаката',
    'Фуу',
    'Киллер Би',
    'Наруто',
    'Мадара'
  ];

  static const List<Color> _jcolor = [
    Colors.brown,
    Colors.blue,
    Colors.pinkAccent,
    Colors.red,
    Colors.white,
    Colors.lightBlueAccent,
    Colors.indigo,
    Colors.purpleAccent,
    Colors.orange,
    Colors.brown,
  ];

  static const List<String> _description = [
    'Гаара (яп. 我愛羅) — шиноби Деревни Скрытого Песка. Еще до рождения он был превращен в джинчуурики Однохвостого Шукаку старейшиной Деревни Песка Чиё и своим отцом Расой. После поражения в битве с Наруто Узумаки — таким же джинчуурики, нашедшим силу в дружбе — Гаара решает подражать ему. Несколько лет спустя он становится Пятым Казекаге (яп. 五代目風影, Годаймэ Казэкаге, досл. Пятая Тень Ветра).',
    'Югито Нии (яп. 二位ユギト, Нии Югито) была джоунином Кумогакуре и джинчуурики Двухвостого.Югито стала Джинчуурики Двухвостого в возрасте двух лет.Кроме того, как было сказано ранее, она была твёрдым, и благоразумным членом своей команды.Позже, Двухвостый был извлечён из её тела, что привело к её смерти.',
    'Ягура Каратачи (яп. 枸橘やぐら, Каратачи Ягура) был Джинчуурики Треххвостого и Четвёртым Мизукаге (яп. 四代目水影, Ёндайме Мизукаге, досл. "Четвёртая Тень Воды") Деревни Скрытого Тумана. Он стал запоминающейся фигурой в истории деревни в основном по своему кровавому и деспотичному правлению, во время которого Киригакуре укрепила свою дурную славу "Деревни Кровавого Тумана".В итоге был побежден Итачи.Погиб после извлечения Треххвостого.',
    'Роуши (яп. 老紫, Роощи) был шиноби из Скрытого Камня, а также джинчуурики Четёрыххвостого.Сон Гоку отметил, что Роуши такой же упрямый старик, как Ооноки, Третий Цучикаге.Роуши стал Джинчуурики Сон Гоку за сорок лет до начала Четвёртой Мировой Войны Шиноби, к тому времени будучи ещё молодым человеком.Позже он скончался в результате извлечения из его тела Четырёххвостого.',
    'Хан (яп. ハン, Хан) был шиноби из Ивагакуре и Джинчуурики Пятихвостого.Он был показан весьма мирным и дружелюбным человеком при встрече с Наруто Узумаки.В какой-то момент он был захвачен Акацуки с целью извлечь хвостатого из его тела, после чего он и умер.',
    'Утаката (яп. ウタカタ, Утаката) был ниндзя-отступником из Деревни Скрытого Тумана и джинчуурики Шестихвостого.В аниме его персонаж представлен холодным и неприступным. Так он — довольно ленивый и безразличный ко всему человек.По версии аниме, в Деревне Скрытого Тумана Утакату считали оружием деревни и поэтому, как и ко всем джинчуурики, к нему относились плохо.Позже Акацуки извлекают из него Биджу и Утаката умирает.',
    'Фуу (яп. フウ, Фуу) — была куноичи Деревни Скрытого Водопада и Джинчуурики семихвостого Чоумея.По словам Дейдары, Фуу ненавидела весь мир из-за того, что жители её деревни ничего не сделали чтобы её спасти, поэтому, девушка отреклась от человечности. Она была захвачена Акацуки, её хвостатый зверь был извлечён и запечатан, что стало причиной её смерти.',
    'Киллер Би (яп. キラービー, Кираа Бии) — шиноби из Деревни Скрытого Облака. Он является нынешним джинчуурики Восьмихвостого и, в отличие от своих предшественников, он смог подружиться с ним и обратить его силу на пользу Облака. Несмотря на то, что Би ответственен за защиту деревни, он стремится стать величайшим в мире рэпером.',
    'Наруто Узумаки (яп. うずまきナルト, Узумаки Наруто) — шиноби Деревни Скрытого Листа. Главный персонаж вселенной. В день своего рождения он стал джинчуурики Девятихвостого Демона-Лиса — судьба, из-за которой он стал изгоем для большей части людей в Конохе на протяжении всего своего детства.Наруто упорно трудился, чтобы получить признание всех в деревне и исполнить свою заветную мечту стать Хокаге. В последующие годы, благодаря многим трудностям и испытаниям, он стал способным ниндзя, которого считали героем Конохагакуре, и после во всем мире, он стал известен как Герой Скрытого Листа (яп. 木 ノ 葉 隠 れ の 英雄, Конохагакуре но Эйю). Вскоре, он оказался одним из ключевых факторов победы в Четвертой Мировой Войне Шиноби, что в конце-концов привело его к достижению своей мечты, когда он стал Седьмым Хокаге (яп. 七 代 目 火影; Буквальное значение: Тень Огня Седьмого Поколения).',
    'Мадара Учиха (яп. うちはマダラ, Учиха Мадара) был легендарным лидером клана Учиха. Он основал Деревню Скрытого Листа вместе со своим другом и соперником, Хаширамой Сенджу, с намерением положить начало мирной эпохе. Когда они двое разошлись во взглядах, как именно достичь этого мира, то сразились за главенство над деревней в битве, которая завершилась смертью Мадары. Тем не менее, впоследствии, он переписал свою смерть и стал скрываться от мира, чтобы продолжать работу над своими планами. Как оказалось, Мадара был не в состоянии завершить их на протяжении своей природной жизни, поэтому доверил свои знания и стремления Обито Учихе незадолго до своей настоящей смерти. Года спустя, Мадара был воскрешен, но в конце концов встретил окончательный провал своих планов, прежде чем повторно умереть.',
  ];

  static const List<String> _jimage = [
    'assets/images/Gaara.png',
    'assets/images/Yugito_1.png',
    'assets/images/Yagura.png',
    'assets/images/Roushi.png',
    'assets/images/Han.png',
    'assets/images/Utakataa.png',
    'assets/images/Fu.png',
    'assets/images/Killer_B.png',
    'assets/images/Naruto.png',
    'assets/images/Madara.png',
  ];

  static const List<String> _Gaara = [
    'assets/images/Gaara/Gaara_1.png',
    'assets/images/Gaara/Gaara_full.png',
    'assets/images/Gaara/Gaara_fun.png',
  ];
  static const List<String> _Yugito = [
    'assets/images/Yugito/Yugito_1.png',
    'assets/images/Yugito/Yugito_Full.png',
    'assets/images/Yugito/Yugito_fun.png',
  ];
  static const List<String> _Yagura = [
    'assets/images/Yagura/Yagura_1.png',
    'assets/images/Yagura/Yagura_full.png',
    'assets/images/Yagura/Yagura_fun.png',
  ];
  static const List<String> _Roushi = [
    'assets/images/Roushi/Roushi_1.png',
    'assets/images/Roushi/Roushi_full.png',
    'assets/images/Roushi/Roushi_fun.png',
  ];
  static const List<String> _Han = [
    'assets/images/Han/Han_1.png',
    'assets/images/Han/Han_full.png',
    'assets/images/Han/Han_fun.png',
  ];
  static const List<String> _Utakata = [
    'assets/images/Utakata/Utakata_arrive.png',
    'assets/images/Utakata/Utakata_full.png',
    'assets/images/Utakata/Utakata_fun.png',
  ];
  static const List<String> _Fu = [
    'assets/images/Fu/Fu_1.png',
    'assets/images/Fu/Fu_full.png',
    'assets/images/Fu/Fu_fun.png',
  ];
  static const List<String> _Killer_B = [
    'assets/images/Killer_B/Killer_B_1.png',
    'assets/images/Killer_B/Killer_B_full.png',
    'assets/images/Killer_B/Killer_B_fun.png',
  ];
  static const List<String> _Naruto = [
    'assets/images/Naruto/Naruto_1.png',
    'assets/images/Naruto/Naruto_full.png',
    'assets/images/Naruto/Naruto_fun.png',
  ];
  static const List<String> _Madara = [
    'assets/images/Madara/Madara_Jinchuriki.png',
    'assets/images/Madara/Madara_all.png',
    'assets/images/Madara/Madara_fun.png',
  ];

  static const List<List> _avatars = [
    _Gaara,
    _Yugito,
    _Yagura,
    _Roushi,
    _Han,
    _Utakata,
    _Fu,
    _Killer_B,
    _Naruto,
    _Madara,
  ];

  Widget _buildCategoryWidget(List<Widget> jinchuriki) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => jinchuriki[index],
      itemCount: jinchuriki.length,
    );
  }

  List<Unit> _retrieveUnitList(String name, String description, String jimage) {
    return List.generate(10, (int i) {
      i += 1;
      return Unit(
        name: name,
        description: description,
        jimage: jimage,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final jinchuriki = <Jinchuriki>[];

    for (var i = 0; i < _jname.length; i++) {
      jinchuriki.add(Jinchuriki(
        name: _jname[i],
        color: _jcolor[i],
        jimage: _jimage[i],
        description: _description[i],
        units: _retrieveUnitList(_jname[i], _description[i], _jimage[i]),
        jimages: _avatars[i],
      ));
    }

    final listView = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.2), BlendMode.dstATop),
          image: AssetImage('assets/images/Jinchuriki.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategoryWidget(jinchuriki),
    );

    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        '人柱力(Джинчурики)',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.redAccent,
    );

    return Material(
        child: Scaffold(
      extendBodyBehindAppBar: false,
      appBar: appBar,
      body: listView,
    ));
  }
}
