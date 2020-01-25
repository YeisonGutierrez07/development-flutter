import 'package:flutter/material.dart';
import 'package:presentacion_app/src/pages/settings_page.dart';

class MenuWidget extends StatelessWidget {
  
  @override
  Drawer build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.blue,),
            title: Text("Home"),
            onTap: () => Navigator.pushReplacementNamed(context, "/"),
          ),
          ListTile(
            leading: Icon(Icons.settings_overscan, color: Colors.blue,),
            title: Text("Componentes"),
            onTap: () => Navigator.pushReplacementNamed(context, 'homePageComponents'),
          ),
          ListTile(
            leading: Icon(Icons.movie, color: Colors.blue,),
            title: Text("Peliculas"),
            onTap: () => Navigator.pushReplacementNamed(context, 'homePageMovies'),
          ),
          ListTile(
            leading: Icon(Icons.collections_bookmark, color: Colors.blue,),
            title: Text("Diseño basico"),
            onTap: () => Navigator.pushReplacementNamed(context, 'basico'),
          ),
          ListTile(
            leading: Icon(Icons.computer, color: Colors.blue,),
            title: Text("Diseño Maquetado"),
            onTap: () => Navigator.pushReplacementNamed(context, 'botones'),
          ),
          ListTile(
            leading: Icon(Icons.add_to_home_screen, color: Colors.blue,),
            title: Text("Diseño con scroll"),
            onTap: () => Navigator.pushReplacementNamed(context, 'scroll'),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue,),
            title: Text("settings"),
            onTap: () =>  Navigator.popAndPushNamed(context, SettingPage.refPage),
          ),

        ]
      ),
    );
  }
}
