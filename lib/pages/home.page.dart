import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imc/blocs/imc.bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = new ImcBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('Calculo de IMC'),
        centerTitle: true,
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: TextFormField(
            style: TextStyle(color: Colors.white, fontSize: 38),
            decoration: InputDecoration(
              labelText: "Altura (cm)",
              hintText: 'Digite a altura',
              labelStyle: TextStyle(color: Colors.white, fontSize: 18),
              icon: FaIcon(
                FontAwesomeIcons.rulerHorizontal,
                color: Colors.white,
                size: 22,
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              border: InputBorder.none,
            ),
            keyboardType: TextInputType.number,
            controller: bloc.heightCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: TextFormField(
            style: TextStyle(color: Colors.white, fontSize: 38),
            decoration: InputDecoration(
              labelText: "Peso (kg)",
              hintText: 'Digite o peso',
              labelStyle: TextStyle(color: Colors.white, fontSize: 18),
              icon: FaIcon(
                FontAwesomeIcons.weight,
                color: Colors.white,
                size: 26,
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              border: InputBorder.none,
            ),
            keyboardType: TextInputType.number,
            controller: bloc.weightCtrl,
            validator: (text) {
              if (text == null || text.isEmpty) {
                debugPrint('Vazio');
              }
              debugPrint('Cheio');
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            bloc.result,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: FlatButton(
            color: Colors.white,
            padding: EdgeInsets.all(20),
            child: Text(
              "Calcular".toUpperCase(),
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 24),
            ),
            onPressed: () {
              setState(() {
                bloc.calculate();
              });
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: FlatButton(
            color: Colors.white,
            child: Text(
              "Resetar campos",
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 15),
            ),
            onPressed: () {
              setState(() {
                bloc.reset();
              });
            },
          ),
        ),
      ]),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.all(20),
          child: FlatButton(
            color: Colors.white,
            child: Text('Detalhes do Projeto'),
            onPressed: () {
              Navigator.pushNamed(context, '/details');
            },
          )),
    );
  }
}
