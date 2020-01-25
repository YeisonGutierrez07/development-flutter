import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
 
  String _nombre = '';
  String _email = '';
  String _password = '';
  String _fecha = '';
  String _select = 'Volar';


  List<String> _poderes = ['Volar', 'Rayos X', 'Super Aliento', 'Super Fuerza'];

  TextEditingController _inputFieldDate = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INPUTS"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmailInput(),
          Divider(),
          _crearPasswordInput(),
          Divider(),
          _crearFechaInput(context),
          Divider(),
          _crearSelectInput(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        suffixIcon: Icon(Icons.insert_comment),
        icon: Icon(Icons.account_circle)
      ),
      onChanged: (val) => setState(() {_nombre = val;}),
    ); 
  }

  Widget _crearEmailInput() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Email de la persona',
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email)
      ),
      onChanged: (valEmail) => setState(() {_email = valEmail;}),
    );
  }

  Widget _crearPasswordInput() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Contraseña',
        labelText: 'Contraseña',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock)
      ),
      onChanged: (valEmail) => setState(() {_password = valEmail;}),
    );
  }
  
  Widget _crearFechaInput(BuildContext context) {

    _selectDate(BuildContext context) async {
      DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2030),
        locale: Locale('es'),
      );

      if (picked != null) {
        setState(() {
          _fecha = picked.toString();
          _inputFieldDate.text =_fecha;
        });
      }
    }

    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDate,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Fecha',
        labelText: 'Fecha',
        suffixIcon: Icon(Icons.calendar_today),
        icon: Icon(Icons.perm_contact_calendar),
        
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  Widget _crearSelectInput() {

    List<DropdownMenuItem<String>> getOpcionesDropdown() {
      List<DropdownMenuItem<String>> lista = new List();

      _poderes.forEach((f) {
        lista.add(DropdownMenuItem(child: Text(f), value: f,));
      }); 

      return lista;
    }

    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),
        DropdownButton(
          value: _select,
          items: getOpcionesDropdown(),
          onChanged: (res) => setState(() { _select = res;}),
        )
      ],
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre de $_nombre'),
      subtitle: Text('Email $_email'),
      trailing: Text(_select),
    );
  }

}

