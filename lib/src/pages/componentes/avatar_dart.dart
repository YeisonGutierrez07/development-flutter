import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar pagina'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              child: Text('YG'),
            ),
          )
        ],
      ),
    );
  }
}