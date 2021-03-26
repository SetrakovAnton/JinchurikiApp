import 'package:meta/meta.dart';

class Unit {
  final String name;
  final String description;
  final String jimage;

  const Unit({
    @required this.name,
    @required this.description,
    @required this.jimage,
  })  : assert(name != null),
        assert(description != null),
        assert(jimage != null);

  Unit.fromJson(Map jsonMap)
    : assert(jsonMap['name'] != null),
    assert(jsonMap['description']  != null),
    assert(jsonMap['jimage'] != null),
    name = jsonMap['name'],
    description = jsonMap['description'],
    jimage = jsonMap['jimage'];
}
