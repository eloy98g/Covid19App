import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:covidapp/countryClass.dart';
import 'package:flag/flag.dart';
import 'package:flutter/services.dart';
import 'dart:async' show Future;

Future<List<CountryItems>> cargarCountryList()async{
  final respuesta = await http.get('https://thevirustracker.com/free-api?countryTotals=ALL');

  if(respuesta.statusCode == 200){
    Country post = Country.fromJson(json.decode(respuesta.body) as Map<String, dynamic>);
    return post;
  }else{
    throw Exception('Error al cargar los datos');
  }

  Map<String, dynamic> myMap = json.decode(respuesta.body);
  List<dynamic> entitlements = myMap["countryitems"][0]["Entitlements"];
  entitlements.forEach((entitlement) {
    (entitlement as Map<String, dynamic>).forEach((key, value) {
      print(key);
      (value as Map<String, dynamic>).forEach((key2, value2) {
        print(key2);
        print(value2);
      });
    });
  });
}
