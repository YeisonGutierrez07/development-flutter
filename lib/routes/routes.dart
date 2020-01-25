
import 'package:flutter/material.dart';
import 'package:presentacion_app/src/pages/componentes/alert_page.dart';
import 'package:presentacion_app/src/pages/componentes/animation_container.dart';
import 'package:presentacion_app/src/pages/componentes/avatar_dart.dart';
import 'package:presentacion_app/src/pages/componentes/cards_page.dart';
import 'package:presentacion_app/src/pages/componentes/home_page.dart';
import 'package:presentacion_app/src/pages/componentes/input_page.dart';
import 'package:presentacion_app/src/pages/componentes/listview_page.dart';
import 'package:presentacion_app/src/pages/componentes/sliders_page.dart';
import 'package:presentacion_app/src/pages/home_page.dart';
import 'package:presentacion_app/src/pages/settings_page.dart';

Map <String, WidgetBuilder> getAplicationRoutes () {
  return <String, WidgetBuilder> {

    // Principales de la app con menu
    '/' : (BuildContext context) => HomePage(),
    'settingsPage'        : (BuildContext context) => SettingPage(),

    // Comportamiento de flutter
    'homePageComponents'  :( BuildContext context) =>HomePageComponents(),
    'alert'               :( BuildContext context) =>AlertPage(),
    'avatar'              :( BuildContext context) =>AvatarPage(),
    'card'                :( BuildContext context) =>CardsPage(),
    'inputs'              :( BuildContext context) =>InputPage(),
    'sliders'             :( BuildContext context) =>SliderPage(),
    'list'                :( BuildContext context) =>ListViewPage(),    
    'animatedContainer'   :( BuildContext context) =>AnimationContainer(),
  };
}
