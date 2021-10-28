import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage('assets/images/pokefundo.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.1), BlendMode.dstATop))),
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset('assets/images/logo.png')],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Container(
                    height: 110,
                    width: 162,
                    child: InkWell(
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text:
                                  '\n    Veja os Pokémons da\n    primeira geração\n\n',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12)),
                          TextSpan(
                              text: '   Visualizar\n   Pokémon',
                              style: TextStyle(color: Colors.red, fontSize: 16))
                        ])),
                        onTap: () {
                          //  Navigator.push(
                          //   context,
                          //   new MaterialPageRoute(
                          //     builder: (context) => new PokelistaPage(),
                          //   ));
                        }),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(242, 190, 34, 1),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 1,
                              offset: Offset(0, 3))
                        ],
                        borderRadius: BorderRadius.circular(9)),
                  ),
                  Padding(padding: const EdgeInsets.all(15)),
                  Container(
                    height: 110,
                    width: 162,
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: '\n    Crie já seu próprio\n    Pokémon\n \n',
                          style: TextStyle(color: Colors.black, fontSize: 12)),
                      TextSpan(
                          text: '   Cadastre novo\n   Pokémon',
                          style: TextStyle(color: Colors.red, fontSize: 16))
                    ])),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(242, 190, 34, 1),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 1,
                              offset: Offset(0, 3))
                        ],
                        borderRadius: BorderRadius.circular(9)),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 550.0, left: 25, right: 20),
          child: Text(
            'As circunstâncias do nascimento de alguém são irrelevantes; é o que você faz com o dom da vida que determina quem você é. \n Mewtwo.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(4, 138, 191, 1),
                fontSize: 15,
                height: 1.5,
                fontWeight: FontWeight.bold),
          ),
        ),
      ]),
    );
  }
}