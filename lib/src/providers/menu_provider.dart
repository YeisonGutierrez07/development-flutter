import 'package:flutter/services.dart' show rootBundle; 
import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider(){
    cargarData();
  }
    
  Future<List<dynamic>> cargarData() async {
    final response = await rootBundle.loadString('data/menu_opts.json');
    return opciones = json.decode(response)['rutas'];
  }
}

final menuProvider = _MenuProvider();