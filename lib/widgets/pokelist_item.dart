import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_app/constant/thema.dart';
import 'package:pokemon_app/constant/ui_helper.dart';
import 'package:pokemon_app/model/pokemon_model.dart';
import 'package:pokemon_app/pages/detail.dart';
import 'package:pokemon_app/widgets/poke_img.dart';

class PokeListItem extends StatelessWidget {
 final PokemonModel pokemon;
  const PokeListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  DetailPage(pokemon: pokemon)));
      },
      child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
          elevation: 3,
          color: UIHelper.getColorFromType(pokemon.type![0]),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(pokemon.name.toString(), style: Constants.getPokemonNameStyle(),),
                Chip(label: Text(pokemon.type![0])),
                Expanded(child: PokeImg(pokemon: pokemon))
              ],
            ),
          )
      ),
    );
  }
}
