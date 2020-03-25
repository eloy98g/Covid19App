import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:covidapp/post.dart';
import 'package:flag/flag.dart';
import 'package:covidapp/details.dart';
import 'dart:async' show Future;


void main(){
  runApp(Aplicacion());
}

var debug;

class Aplicacion extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'CoVid App',
      home: Inicio(),
    );
  }
}

Future<Global> cargarGlobal()async{
  final respuesta = await http.get('https://thevirustracker.com/free-api?global=stats');

  if(respuesta.statusCode == 200){
    Global post = Global.fromJson(json.decode(respuesta.body));
    return post;
  }else{
    throw Exception('Error al cargar los datos');
  }
}

class Inicio extends StatelessWidget{
  Widget renderizar(BuildContext context,  AsyncSnapshot<Global> snapshot){
    if(snapshot.hasError){
      return Text('Error!');
    }else if(snapshot.hasData){
      final Global post = snapshot.data;
      int total_cases = post.results[0].totalCases;
      print(snapshot.toString());
      print(total_cases);
      return Column(
        children: <Widget>[
          Text('Total casos: $total_cases'),
        ],
      );
    }else{
      return CircularProgressIndicator();
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('CoVid-19 App'),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: FutureBuilder<Global>(
              builder: renderizar,
              future: cargarGlobal(),
            )
        )
    );
  }
}
