import 'package:flutter/material.dart';
import 'package:presentacion_app/src/models/pelicula_model.dart';


class MovieHorizontal extends StatelessWidget {
  
  final List<Pelicula> peliculas;
  final Function siguientePagina;

  MovieHorizontal({@required this.peliculas, @required this.siguientePagina });

  final _pageController = new PageController(
    initialPage: 1, 
    viewportFraction: 0.3
  );

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    _pageController.addListener(() => {
      if (_pageController.position.pixels >= _pageController.position.maxScrollExtent -200) {
        siguientePagina()
      }
    });

    return Container(
      height: _screenSize.height * 0.3,
      child: PageView.builder(
        pageSnapping: false,
        controller: _pageController,
        itemCount: peliculas.length,
        itemBuilder: (BuildContext context, int index) {
          return _getCard(context, peliculas[index]);
        },
      ),
    );
  }

  Widget _getCard (BuildContext context, Pelicula peli) {

    peli.uniqueID =  '${peli.id}-poster';

    final cardMovie = Container(
        margin: EdgeInsets.only(right: 15.0),
        child: Column(
          children: <Widget>[
            Hero(
              tag: peli.uniqueID,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: FadeInImage(
                  image: NetworkImage(peli.getIMGPoster()),
                  placeholder: AssetImage('assets/img/no-image.jpg'),
                  fit: BoxFit.cover,
                  height: 160.0,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              peli.title,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.caption,
            )
          ]
        ),
      );

      return GestureDetector(
        child: cardMovie,
        onTap: () {
          print("Nombre de la pelicula ${peli.id}");
          Navigator.pushNamed(context, 'detalle', arguments: peli);
        },
      );
  }

  List<Widget> _listCards(BuildContext context) {
    return peliculas.map((peli) {

      return Container(
        margin: EdgeInsets.only(right: 15.0),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: FadeInImage(
                image: NetworkImage(peli.getIMGPoster()),
                placeholder: AssetImage('assets/img/no-image.jpg'),
                fit: BoxFit.cover,
                height: 160.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              peli.title,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.caption,
            )
          ]
        ),
      );
    }).toList();
  }
}
