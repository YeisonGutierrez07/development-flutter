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
            leading: Icon(Icons.party_mode, color: Colors.blue,),
            title: Text("party_mode"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people, color: Colors.blue,),
            title: Text("people"),
            onTap: () {},
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
