import 'package:flutter/material.dart';
import 'package:covidapp/CountryList.dart';
import 'package:covidapp/post.dart';

class CountryDetails extends StatelessWidget{
  final Country post;

  CountryDetails(this.post);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Card(//Te pone las cosas dentro de una carta
          child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(post.code),
                  ],
                ),
                Text(post.title),
                Text('Casos totales: '+post.total_cases.toString()),
                Text('Muertes totales: '+post.total_deaths.toString()),
                Text('Casos hoy: '+post.total_new_cases_today.toString()),
                Text('Muertes hoy: '+post.total_new_deaths_today.toString()),
                Text('Recuperados: '+post.total_recovered.toString()),
              ]
          ),
        ),
      ),
    );
  }
}