import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Categoria"), value: "Categoria"),
      DropdownMenuItem(child: Text("Tipo"), value: "Tipo"),
      DropdownMenuItem(child: Text("Habilidades"), value: "Habilidades"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 100.0),
            child: Row(
              children: [
                Text(
                  'Crie seu próprio Pokémon',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(4, 138, 191, 1),
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Stack(
                
                children: [
                  Container(
                  //color: Colors.amber,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 20,bottom: 20),
                    child: Image.asset(
                      'assets/images/pokebola.png',
                      height: 125,
                      width: 125,
                    ),
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150.0, left: 60),
                    child: Text('Editar'),
                  )
                ]
              ),
              Container(
                child: Container(
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(8)),
                  width: 221,
                  child: Center(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        hintText: 'Nome do Pokémon',
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 166.5,
                  child: DropdownButton(
                      dropdownColor: Colors.black,
                      icon: Icon(Icons.expand_more),
                      value: 'Categoria',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      items: dropdownItems),
                ),
                Container(
                  width: 166.5,
                  child: DropdownButton(
                      dropdownColor: Colors.black,
                      icon: Icon(
                        Icons.expand_more,
                      ),
                      value: 'Tipo',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      items: dropdownItems),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 350,
                  child: DropdownButton(
                      dropdownColor: Colors.black,
                      icon: Icon(
                        Icons.expand_more,
                      ),
                      value: 'Habilidades',
                      style: TextStyle(fontSize: 12),
                      items: dropdownItems),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 13.0,top: 30.0),
                child: Container(
                  width: 367,
                  height: 87,
                  child: TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                      labelText: 'Descrição',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Container(
              height: 38,
              width: 233,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(4, 138, 191, 1)),
                    // foregroundColor: MaterialStateProperty.all(
                    //     Color.fromRGBO(255, 255, 255, 0 )),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17.0),
                    ))),
                child: Text(
                  'Salvar',
                  style: TextStyle(
                      fontFamily: 'Roboto Mono',
                      fontSize: 16,
                      color: Color.fromRGBO(255, 255, 255, 1)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
