import 'package:flutter/material.dart';

final _icons = <String, IconData> {
  'add_alert'     : Icons.add_alert,
  'accessibility' : Icons.accessible_forward,
  'folder_open'   : Icons.folder_open,
  'donut_large'   : Icons.donut_large,
  'input'         : Icons.input,
  'list'         : Icons.list,
  'tune'         : Icons.tune,

  

};

Icon getIcon (String iconText) {
  return Icon(_icons[iconText], color: Colors.blue);
}