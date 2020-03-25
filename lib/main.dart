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

  Widget TextSlotGlobal(String text, Color color){
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 20

      ),
    );
  }

  Widget SlotGlobal(String data, String text, Color color){
    return Column(
      children:[
        Expanded(
          child: Column(
            children:[
              TextSlotGlobal(data, color),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children:[
              TextSlotGlobal(text, color),
            ],
          ),
        ),
      ],
    );
  }

  Widget DoubleSlotGlobal(String topData, String topText, String botData, String botText, Color color, bool CompleteRow){
    if(CompleteRow == false){
      return Container(
        margin: const EdgeInsets.all(10.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Expanded(
                child: SlotGlobal(topData, topText, color),
              ),
              Expanded(
                child: SlotGlobal(botData, botText, color),
              ),
            ],
          ),
        ),
      );
    }else{
      return Container(
        margin: const EdgeInsets.all(10.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Expanded(
                child: SlotGlobal(topData, topText, color),
              ),
            ],
          ),
        ),
      );
    }

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
            child:DoubleSlotGlobal(
              post.results[0].totalCases.toString(),
              'TOTAL INFECTED',
              '+'+post.results[0].total_new_cases_today.toString(),
              'NEW CASES TODAY',
              Colors.blue,
              false,
            ),
          ),
          Expanded(
            child: DoubleSlotGlobal(
              post.results[0].total_deaths.toString(),
              'TOTAL DEATHS',
              '+'+post.results[0].total_new_deaths_today.toString(),
              'NEW DEATHS TODAY',
              Colors.red,
              false,
            ),
          ),
          Expanded(
            child: DoubleSlotGlobal(
              post.results[0].total_recovered.toString(),
              'TOTAL RECOVERED',
              '',
              '',
              Colors.green,
              true,
            ),
          ),
        ],
      );
    }else{
      return CircularProgressIndicator(
      );
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