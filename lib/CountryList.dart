import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:covidapp/countryClass.dart';
import 'package:flag/flag.dart';
import 'package:flutter/services.dart';
import 'dart:async' show Future;

Future<Country> cargarCountryList()async{
  final respuesta = await http.get('https://thevirustracker.com/free-api?countryTotals=ALL');

  if(respuesta.statusCode == 200){
    Country post = Country.fromJson(json.decode(respuesta.body));
    return post;
  }else{
    throw Exception('Error al cargar los datos');
  }
}


@override
class CountryList extends StatelessWidget{
  Widget rendCountriesStats(BuildContext context, AsyncSnapshot<Country> snapshot) {
    if(snapshot.hasError){
      return Text('Error!');
    }else if(snapshot.hasData){
      Country block = snapshot.data;
      var pais = 'the';
      return ListView.separated(
        itemCount: block.CountryItems.length,
        separatorBuilder: (context, i){
          return Divider();//Se puede ponder cualquier cosa
        },
        itemBuilder: (context, i){
          pais = pais + i.toString();
          var code = ('block.CountryItems[1].'+pais+'.code');
          var titulo = ('block.CountryItems[1].'+pais+'.title');
          print('Pais:'+pais);
          return ListTile(
            leading: Text(titulo),//principio
            //trailing para el final
            title: Text(code),
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
