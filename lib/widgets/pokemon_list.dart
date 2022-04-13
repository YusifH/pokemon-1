import 'package:flutter/material.dart';

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
          return ListView.builder(
              itemCount: _listem.length,
              itemBuilder: (context, index) {
                var  currentPokemon = _listem[index];
                return ListTile(title: Text(currentPokemon.name.toString()),);
              });
        }else if (snapshot.hasError) {
          return Center(
            child: Text('data yoxdu'),
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


