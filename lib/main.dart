import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:covidapp/post.dart';
import 'package:covidapp/countryClass.dart';
import 'package:covidapp/GlobalStats.dart';
import 'package:covidapp/CountryList.dart';


void main(){
  runApp(Aplicacion());
}

class Aplicacion extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'CoVid App',
      home: Inicio(),
    );
  }
}
/*TODO: El estilo será un fondo azul opaco oscuro y los items de Global tendrán un background
   de gris transparente, el widget de topCountries será una lista blanca
*/
class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('CoVid-19 App'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: FutureBuilder<Global>(
                builder: GlobalStats().rendGlobalStats,
                future: cargarGlobal(),
              )
            ),

            Expanded(

            )
          ],
        )
    );
  }
}