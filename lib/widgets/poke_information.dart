import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_app/model/pokemon_model.dart';

class PokeInformation extends StatelessWidget {
final  PokemonModel pokemon;
  const PokeInformation({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   //`debugPrint(pokemon.name);
    String pokeBallImg = 'img/pokeball.png';
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.w)),
        color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildInformationRow('Name', pokemon.name),
          _buildInformationRow('Height', pokemon.height),
          _buildInformationRow('Weight', pokemon.weight),
          _buildInformationRow('Spawn Time', pokemon.spawnTime),
          _buildInformationRow('Weakness', pokemon.weaknesses),
          _buildInformationRow('Next Evolution', pokemon.nextEvolution),
          _buildInformationRow('Pro Evolution', pokemon.prevEvolution),
        ],
      ),
    );
  }
}
_buildInformationRow(String label, dynamic value){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(label, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
      if(value is List && value.isNotEmpty)
       Expanded(child:  Text(value.join(', ')))
      else if(value == null)
        Text('-')
      else Text(value, style: TextStyle(fontSize: 16))
    ],
  );
}