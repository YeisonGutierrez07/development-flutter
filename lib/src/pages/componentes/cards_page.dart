import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Pagina')),
      body: ListView(
        padding: EdgeInsets.all(10),
        children:<Widget>[
          _cardTipo1(),
          SizedBox(height: 20),
          _cardTipo2(),
          SizedBox(height: 20),
          _cardtipo3(context),
          SizedBox(height: 20),
          _cardTipo1(),
          SizedBox(height: 20),
          _cardTipo2(),
          SizedBox(height: 20),
          _cardtipo3(context),
          SizedBox(height: 20),
          _cardTipo1(),
          SizedBox(height: 20),
          _cardTipo2(),
          SizedBox(height: 20),
          _cardtipo3(context),
          SizedBox(height: 20),
          _cardTipo1(),
          SizedBox(height: 20),
          _cardTipo2(),
          SizedBox(height: 20),
          _cardtipo3(context),
          SizedBox(height: 20),
        ]
      ),
    );
  }
    
  Widget  _cardTipo1() {
    return Card(
      elevation: 90.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('HOLA PERROS'),
            subtitle: Text("lorem imsuplorem imsuplorem imsuplorem imsuplorem imsuplorem imsuplorem imsuplorem imsuplorem imsuplorem imsup"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Enviar'),
                onPressed: () {},
              )
            ],
          )
        ],
      )
    );
  }

  Widget _cardTipo2() {
    final card = Card(
      child: Column(
        children: <Widget>[
          // Image(
          //   image: NetworkImage('https://www.gp-masonry.ca/wp-content/uploads/2013/12/bg1.jpg'),
          // ),
          FadeInImage(
            image: NetworkImage('https://www.gp-masonry.ca/wp-content/uploads/2013/12/bg1.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text('HOLA PERRAS')
          )
        ],
      ),
    );

    return Container(
      child: card,
    );
  }

  Widget _cardtipo3(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            ButtonTheme.bar( // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('BUY TICKETS'),
                    onPressed: () { /* ... */ },
                  ),
                  FlatButton(
                    child: const Text('LISTEN'),
                    onPressed: () { /* ... */ },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}