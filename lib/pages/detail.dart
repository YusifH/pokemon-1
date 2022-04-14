import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_app/constant/ui_helper.dart';
import 'package:pokemon_app/model/pokemon_model.dart';
import 'package:pokemon_app/widgets/poke_name_type.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;

  const DetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeBallImg = 'img/pokeball.png';
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 24.w,
                  )),
            ),
            Expanded(
                child: Stack(
                  children: [
                    Positioned(
                        child: Image.asset(pokeBallImg,
                          height: 0.15.sh, fit: BoxFit.cover,),
                      right: 0,
                      top: 40,
                    ),
                    PokeNameType(pokemon: pokemon),
                    Align(
                      alignment: Alignment.topCenter,
                      child: CachedNetworkImage(
                        imageUrl: pokemon.img ?? '',),
                    )
                  ],
                )
            )

          ],
        ),
      ),
    );
  }
}
