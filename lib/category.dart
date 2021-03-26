import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'unit.dart';
import 'converter_route.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class Jinchuriki extends StatelessWidget {
  final String name;
  final Color color;
  final String jimage;
  final List<Unit> units;
  final String description;
  final List<String> jimages;

  const Jinchuriki(
      {Key key,
      @required this.name,
      @required this.color,
      @required this.jimage,
      @required this.units,
      @required this.description,
      @required this.jimages,})
      : assert(name != null),
        assert(color != null),
        assert(jimage != null),
        assert(units != null),
        assert(description != null),
        assert(jimages != null),
        super(key: key);

  void _navigateToConverter(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
          ),
          title: Text(
            name,
            style: Theme.of(context).textTheme.display1,
          ),
          backgroundColor: color,
          centerTitle: true,
        ),
        body: ConverterRoute(
          color: color,
          units: units,
          jimage: jimage,
          description: description,
          jimages: jimages,
        ),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          onTap: () {
            print("Let's start our acquaintance with the jinchuriki");
            return _navigateToConverter(context);
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(jimage),
                        fit: BoxFit.fill,
                      ),
                    ),
                    // child: Padding(
                    //   padding: EdgeInsets.all(16.0),
                    //   child: Image.asset(
                    //     jimage,
                    // width: 100,
                    // height: 100,
                    // ),
                    // ),
                  ),
                ),
                Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
