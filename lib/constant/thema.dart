// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Constants{
  Constants._();

  static const String Title = 'Pokedex';

  static TextStyle getTitleTextStyle(){
    return TextStyle(
      color:  Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 48
    );
  }

  static TextStyle getPokemonNameStyle(){
    return TextStyle(
        color:  Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 22
    );
  }
}