import 'package:flutter/material.dart';
import 'package:presentacion_app/src/providers/peliculas_provider.dart';
import 'package:presentacion_app/src/search/search_delegate.dart';
import 'package:presentacion_app/src/widgets/card_swiper_widget.dart';
import 'package:presentacion_app/src/widgets/menu_widget.dart';
import 'package:presentacion_app/src/widgets/movie_horizontal.dart';

class HomePageMovies extends StatelessWidget {

  final peliculasProvider = new PeliculasProvider();

  @override
  Widget build(BuildContext context) {
    peliculasProvider.getPopulares();

    return Scaffold(
      drawer: MenuWidget(),
      appBar: AppBar(
        centerTitle: false,
        title: Text('Peliculas en cine'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          )
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _swiperCards(),
            _footer(context)
          ],
          ),
      ),
    );
  }

  Widget _swiperCards() {

    return FutureBuilder(
      future: peliculasProvider.getEnCines(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return CardSwiper( peliculas: snapshot.data );
        }
        return Container(
          height: 400.0,
          child: Center(
            child: CircularProgressIndicator()
          )
        );
      },
    );
  }

  Widget _footer(BuildContext context) {
    return Container( width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Text("Populares", style: Theme.of(context).textTheme.subhead,)
          ),
          StreamBuilder(
            stream: peliculasProvider.popularesStream,
            builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
              if(snapshot.hasData) {
                return MovieHorizontal(
                  peliculas: snapshot.data,
                  siguientePagina: peliculasProvider.getPopulares
                );
              }
              return Center(child: CircularProgressIndicator());
            },
          ),
        ],
        ),
    );
  }

}
