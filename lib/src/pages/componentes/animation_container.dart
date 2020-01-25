import 'package:flutter/material.dart';
import 'dart:math';

class AnimationContainer extends StatefulWidget {
  AnimationContainer({Key key}) : super(key: key);

  @override
  _AnimationContainerState createState() => _AnimationContainerState();
}

class _AnimationContainerState extends State<AnimationContainer> {
  
  double _width  = 50.0;
  double _height = 50.0;
  Color  _color  = Colors.pink;
  BorderRadiusGeometry _borderRadios   = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title:Text("Conenedor animado")
        ),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.easeIn,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              borderRadius: _borderRadios,
              color: _color
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(child: Icon(Icons.update),  onPressed: () => _cambiarForma(),)
          ],
          ),
      ),
    );
  }

  int _cambiarForma() {

    final random = Random();

    setState((){
      _width  = random.nextInt(300).toDouble();
      _height =random.nextInt(300).toDouble();
      _color  = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1);
      _borderRadios   = BorderRadius.circular(random.nextInt(100).toDouble());
    });
    return 1;
  }
}

