import 'package:flutter/material.dart';
import 'package:imc/pages/details_page.dart';
import 'package:imc/pages/home.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'IMC',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
        initialRoute: '/',
        // on the FirstScreen widget.
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/details': (context) => DetailsPage()
        });
  }
}
