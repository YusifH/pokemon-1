import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_app/pages/home_page.dart';
import 'package:pokemon_app/services/pokedeks_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    PokeApi.getPokemonData();
    return ScreenUtilInit(
      designSize: const Size(412, 732),
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Pokedeks',
          theme: ThemeData.light(),
          home: const Homepage(),
        ),);
  }
}

