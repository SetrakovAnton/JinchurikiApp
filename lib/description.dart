import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class SecondScreen extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final String jimage;
  final String description;

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

  static const List<String> _jimage = [
    'assets/images/Gaara.png',
    'assets/images/Yugito.png',
    'assets/images/Yagura.png',
    'assets/images/Roushi.png',
    'assets/images/Han.png',
    'assets/images/Utakataa.png',
    'assets/images/Fu.png',
    'assets/images/Killer_B.png',
    'assets/images/Naruto.png',
    'assets/images/Madara.png',
  ];

  const SecondScreen({
    Key key,
    @required this.name,
    @required this.color,
    @required this.jimage,
    @required this.description,

  })  : assert(description != null),
        assert(name != null),
        assert(color != null),
        super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(name,style:TextStyle(fontSize:30.0,),),
          backgroundColor: color,
          centerTitle: true,
        ),
        body:Container(padding:EdgeInsets.all(8.0),
          child: Column(children:[
            Image.asset(jimage),
            Text(description),
          ],),),
      ),
    );
  }
}