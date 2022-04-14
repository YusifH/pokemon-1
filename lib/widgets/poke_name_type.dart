import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_app/constant/thema.dart';
import 'package:pokemon_app/model/pokemon_model.dart';
import 'package:pokemon_app/widgets/poke_information.dart';

class PokeNameType extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeNameType({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                pokemon.name!,
                style: Constants.getPokemonNameStyle(),
              ),
              Text(
                '#${pokemon.num!}',
                style: Constants.getPokemonNameStyle(),
              ),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 16), child: Chip(label: Text(pokemon.type?.join(',  ') ?? ""))),
        PokeInformation(pokemon: pokemon)
      ],
    );
  }
}
