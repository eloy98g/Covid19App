import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:covidapp/post.dart';
import 'package:flag/flag.dart';
import 'dart:async' show Future;

var debug;

Future<Country> cargarCountryList()async{
  final respuesta = await http.get('https://thevirustracker.com/free-api?countryTotals=ALL');

  if(respuesta.statusCode == 200){
    Country post = Country.fromJson(json.decode(respuesta.body));
    print('Post:'+post.countryitems[0].title);
    return post;
  }else{
    throw Exception('Error al cargar los datos');
  }
}

class Countries extends StatelessWidget {
  Widget topCountries(BuildContext context, AsyncSnapshot<Country> snapshot) {
    if(snapshot.hasError){
      print(snapshot.error);
      return Text('Error');
    }else if(snapshot.hasData){
      //print('Longitud lista: '+snapshot.data.length.toString());
      print(snapshot.requireData);
      Country post = snapshot.data;
      return ListView.separated(
        itemCount: 2,
        separatorBuilder: (context, i){
          return Divider();
        },
        itemBuilder: (context, i){
          return ListTile(
            leading: Text(snapshot.data.countryitems.length.toString()),
          );
        },
      );
    }else{
      return CircularProgressIndicator();
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}