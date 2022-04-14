import 'package:flutter/material.dart';
import 'package:pokemon_app/constant/ui_helper.dart';
import 'package:pokemon_app/model/pokemon_model.dart';

class DetailPage extends StatelessWidget {
final  PokemonModel pokemon;
  const DetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
    );
  }
}
