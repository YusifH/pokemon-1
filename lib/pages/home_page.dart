// ignore_for_file: prefer_const_literals_to_create_immutables

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pokemon_app/widgets/app_title.dart';
import 'package:pokemon_app/widgets/pokemon_list.dart';
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppTitle(),
          Expanded(
            child: PokemonList(),
          )
        ],
      )
    );
  }
}

