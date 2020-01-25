import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  var _valorInicial = 100.0;
  var _active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sliders'),),
      body: Container(
        padding:EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen(),)
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _valorInicial,
      min: 10.0,
      max: 400.0,
      
      onChanged: _active ? null :  (val) {
        print(val);
        setState(() {_valorInicial= val;});
      },
    );
  }

  Widget _crearCheckBox() {
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _active, 
      onChanged: (value) {
        print(value);
        setState(() => _active = value );
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _active, 
      onChanged: (value) {
        print(value);
        setState(() => _active = value );
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR17o-tLlZiZApCtd73sC8sMPzGrglZvKPQoDIaJBO8L8DY1Hk-xQ&s'),
      width: _valorInicial,
      fit: BoxFit.contain,
    );
  }
}
