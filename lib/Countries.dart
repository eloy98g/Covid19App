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
    return post;
  }else{
    throw Exception('Error al cargar los datos');
  }

  /*void iterateJson(String jsonStr) {
    Map<String, dynamic> myMap = json.decode(respuesta.body);
    List<dynamic> entitlements = myMap["Dependents"][0]["Entitlements"];
    entitlements.forEach((entitlement) {
      (entitlement as Map<String, dynamic>).forEach((key, value) {
        print(key);
        (value as Map<String, dynamic>).forEach((key2, value2) {
          print(key2);
          print(value2);
        });
      });
    });
  }*/
}

class Countries extends StatelessWidget {
  Widget topCountries(BuildContext context, AsyncSnapshot<List<Country>> snapshot) {
    if(snapshot.hasError){
      print(snapshot.error);
      return Text('Error');
    }else if(snapshot.hasData){
      //print('Longitud lista: '+snapshot.data.length.toString());
      print(snapshot.data);
      return ListView.separated(
        itemCount: 2,
        separatorBuilder: (context, i){
          return Divider();
        },
        itemBuilder: (context, i){
          return ListTile(
            leading: Text('Holi'),
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