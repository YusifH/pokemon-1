// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_app/widgets/pokelist_item.dart';

import '../model/pokemon_model.dart';
import '../services/pokedeks_api.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>>  _pokemonListFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pokemonListFuture = PokeApi.getPokemonData();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: _pokemonListFuture,
      builder: (context, snapshot) {
        if(snapshot.hasData) {
          List<PokemonModel> _listem = snapshot.data!;
          return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
              itemBuilder: (context, index) => PokeListItem(pokemon: _listem[index]),
              itemCount: _listem.length,
          );
        }else if (snapshot.hasError) {
          return Center(
            child: Text('Internet  yoxdu...'),
          );
        }else{
          return Center(
            child:  CircularProgressIndicator(),
          );
        }

      },
    );
  }
}
