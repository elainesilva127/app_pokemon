import 'package:app_pokemon/screen/initial.dart';
import 'package:app_pokemon/screen/pokelista.dart';
import 'package:app_pokemon/screen/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<HomePage> {
  int _selectedIndex = 0;
  var validateBackButton = new Icon(Icons.arrow_back, color: Color.fromRGBO(217, 74, 74, 1));
  String appbarTitleString = "POKEDEX";
  var appBarTitleText = new Text("POKEDEX");

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    InitialPage(),
    PokelistaPage(),
    RegisterPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          appbarTitleString = "POKEDEX";
          appBarTitleText = new Text(appbarTitleString);
          validateBackButton = new Icon(Icons.arrow_back, color: Color.fromRGBO(217, 74, 74, 1));
          break;
        case 1:
          appbarTitleString = "POKELISTA";
          appBarTitleText = new Text(appbarTitleString);
          validateBackButton = new Icon(Icons.arrow_back, color: Colors.white);
          break;
        case 2:
          appbarTitleString = "CADASTRE SEU POKÉMON";
          appBarTitleText = new Text(appbarTitleString);
          validateBackButton = new Icon(Icons.arrow_back, color: Colors.white);
          break;
        default:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: validateBackButton,
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: appBarTitleText,
        backgroundColor: const Color.fromRGBO(217, 74, 74, 1),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(217, 74, 74, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Pokelista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Cadastro',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
