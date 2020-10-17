import 'package:flutter/material.dart';
import 'package:imc/pages/home.page.dart';

class DetailsPage extends StatefulWidget {
  static const String routeName = '/details';

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Projeto'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Projeto: Cálculo de IMC".toUpperCase(),
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Funcionalidades:'.toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text('Cáculo de IMC'),
                Text('Validação de campos vazios'),
                Text('Resetar campos'),
                Text('Roteamento'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Integrantes:'.toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text('Adriano Machado'),
                Text('Gustavo Luigi Brancacio'),
                Text('Henrique Rocha'),
                Text('Raul Caldas Testa'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
