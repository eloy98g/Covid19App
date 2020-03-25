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
      home: GlobalStats(),
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

class GlobalStats extends StatelessWidget{

  Widget SlotGlobal(int data, String text){
    return Column(
      children:[
        Expanded(
          child: Column(
            children:[
              Text(data.toString()),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children:[
              Text(text),
            ],
          ),
        ),
      ],
    );
  }

  Widget rendGlobalStats(BuildContext context,  AsyncSnapshot<Global> snapshot){
    if(snapshot.hasError){
      return Text('Error!');
    }else if(snapshot.hasData){
      final Global post = snapshot.data;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Expanded(
                  child: SlotGlobal(post.results[0].totalCases, 'TOTAL INFECTED'),
                ),
                Expanded(
                  child: SlotGlobal(post.results[0].total_new_cases_today, 'NEW CASES TODAY'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Expanded(
                  child: SlotGlobal(post.results[0].total_deaths, 'TOTAL DEATHS'),
                ),
                Expanded(
                  child: SlotGlobal(post.results[0].total_new_deaths_today, 'NEW DEATHS TODAY'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Expanded(
                  child: SlotGlobal(post.results[0].total_recovered, 'TOTAL RECOVERED'),
                ),
              ],
            ),
          ),
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
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: FutureBuilder<Global>(
                  builder: rendGlobalStats,
                  future: cargarGlobal(),
                )
            ),
            Expanded(
                child: Container(
                  color: Colors.yellow,
                  child: Text('Work in progress'),
                )
            ),
          ],
        )
    );
  }

  /*
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('CoVid-19 App'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: FutureBuilder<Global>(
              builder: renderizar,
              future: cargarGlobal(),
            )
        )
    );
  }*/
}