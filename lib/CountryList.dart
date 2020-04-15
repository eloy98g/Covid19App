import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:covidapp/post.dart';
import 'package:http/http.dart' as http;
import 'package:flag/flag.dart';
import 'package:flutter/services.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

import 'dart:async' show Future;

Future<List<Country>> cargarCountryList()async{
  print('1');
  String respuesta = await rootBundle.loadString('data/countryTotals.json');
  print('2');
  return (json.decode(respuesta) as List).map((post) => Country.fromJson(post)).toList();

}


@override
class CountryList extends StatelessWidget{
  Widget rendCountriesStats(BuildContext context, AsyncSnapshot<List<Country>> snapshot) {
    if(snapshot.hasError){
      print(snapshot.error.toString());
      return Text('Error!');
    }else if(snapshot.hasData){
      return ListView.separated(
        itemCount: snapshot.data.length,
        separatorBuilder: (context, i){
          return Divider();//Se puede ponder cualquier cosa
        },
        itemBuilder: (context, i){
          final Country post = snapshot.data[i];
          return ListTile(
            leading: Text(post.code),//principio
            //trailing para el final
            title: Text(post.title),
            /*onTap: (){//Al pulsar
              return Navigator.push(//push empuja una nueva ventana y pop vuelve atras, dos parametros
                context,//context porque si
                //Envia a postdetails
                MaterialPageRoute(builder: (context) => PostDetails(post)),
              );
            },*/
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
