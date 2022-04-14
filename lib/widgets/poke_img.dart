import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pokemon_app/model/pokemon_model.dart';
class PokeImg extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImg({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeBallImg = 'img/pokeball.png';
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(pokeBallImg,fit: BoxFit.cover,),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(
            imageUrl: pokemon.img!,
            fit: BoxFit.cover,
            placeholder: (context, url) => CircularProgressIndicator(
              color: Colors.red,
            ),
          ),
        )
      ],
    );
  }
}
