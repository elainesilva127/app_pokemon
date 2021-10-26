import 'package:app_pokemon/screen/initial.dart';
import 'package:app_pokemon/screen/pokelista.dart';
import 'package:app_pokemon/screen/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<HomePage> {
 int _selectedIndex = 0;


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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('POKEDEX')),
        backgroundColor: const Color.fromRGBO(217,74,74,1),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
   backgroundColor: Color.fromRGBO(217,74,74,1),
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