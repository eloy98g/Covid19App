import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:covidapp/post.dart';
import 'package:http/http.dart' as http;
import 'package:flag/flag.dart';
import 'package:flutter/services.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'dart:io';



Future<List<Country>> cargarCountryList()async{
  return (json.decode(prueba) as List).map((post) => Country.fromJson(post)).toList();
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

String prueba = '[{"ourid":1,"title":"Afghanistan","code":"AF","source":"https://thevirustracker.com/afghanistan-coronavirus-information-af","total_cases":784,"total_recovered":43,"total_unresolved":0,"total_deaths":25,"total_new_cases_today":70,"total_new_deaths_today":2,"total_active_cases":716,"total_serious_cases":0},{"ourid":2,"title":"Spain","code":"ES","source":"https://thevirustracker.com/afghanistan-coronavirus-information-af","total_cases":784,"total_recovered":43,"total_unresolved":0,"total_deaths":25,"total_new_cases_today":70,"total_new_deaths_today":2,"total_active_cases":716,"total_serious_cases":0},{"ourid":3,"title":"China","code":"CH","source":"https://thevirustracker.com/afghanistan-coronavirus-information-af","total_cases":784,"total_recovered":43,"total_unresolved":0,"total_deaths":25,"total_new_cases_today":70,"total_new_deaths_today":2,"total_active_cases":716,"total_serious_cases":0},{"ourid":4,"title":"EEUU","code":"EU","source":"https://thevirustracker.com/afghanistan-coronavirus-information-af","total_cases":784,"total_recovered":43,"total_unresolved":0,"total_deaths":25,"total_new_cases_today":70,"total_new_deaths_today":2,"total_active_cases":716,"total_serious_cases":0},{"ourid":5,"title":"Italia","code":"IT","source":"https://thevirustracker.com/afghanistan-coronavirus-information-af","total_cases":784,"total_recovered":43,"total_unresolved":0,"total_deaths":25,"total_new_cases_today":70,"total_new_deaths_today":2,"total_active_cases":716,"total_serious_cases":0}, {"ourid":6,"title":"Francia","code":"FR","source":"https://thevirustracker.com/afghanistan-coronavirus-information-af","total_cases":784,"total_recovered":43,"total_unresolved":0,"total_deaths":25,"total_new_cases_today":70,"total_new_deaths_today":2,"total_active_cases":716,"total_serious_cases":0}]';