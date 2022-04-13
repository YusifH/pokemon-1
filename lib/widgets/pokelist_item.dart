import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_app/model/pokemon_model.dart';

class PokeListItem extends StatelessWidget {
 final PokemonModel pokemon;
  const PokeListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
      elevation: 3,
      child: Column(
        children: [
          Text(pokemon.name.toString()),
          Chip(label: Text(pokemon.type![0]))
        ],
      ),
    );
  }
}
