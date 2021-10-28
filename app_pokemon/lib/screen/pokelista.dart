import 'package:flutter/material.dart';

class PokelistaPage extends StatefulWidget {
  const PokelistaPage({Key? key}) : super(key: key);

  @override
  _PokelistaPageState createState() => _PokelistaPageState();
}

class _PokelistaPageState extends State<PokelistaPage> {
  var listPokemon = new ListTile(leading: Image.asset('assets/images/Bulbasaur.png'),title: Text('Bulbasaur'),subtitle: Text('#1'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        listPokemon,
        listPokemon,
        listPokemon,
        listPokemon,
        listPokemon,
        listPokemon,
        listPokemon,
        listPokemon,
        listPokemon,
      ],
    ));
  }
}
