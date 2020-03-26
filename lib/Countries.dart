import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:covidapp/post.dart';
import 'package:flag/flag.dart';
import 'dart:async' show Future;

Future<Country> cargarTop(String code)async{
  final respuesta = await http.get('https://thevirustracker.com/free-api?global=stats');

  if(respuesta.statusCode == 200){
    Global post = Global.fromJson(json.decode(respuesta.body));
    return post;
  }else{
    throw Exception('Error al cargar los datos');
  }
}

class topCountries extends StatelessWidget {
  Widget renderizar(BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
    /*if (snapshot.hasError) {
      return Text('Error!');
    } else if (snapshot.hasData) {
      return ListView.separated(
        itemCount: snapshot.data.length,
        separatorBuilder: (context, i) {
          return Divider(); //Se puede ponder cualquier cosa
        },
        itemBuilder: (context, i) {
          final Post post = snapshot.data[i];
          return ListTile(
            leading: Text(post.id.toString()), //principio
            //trailing para el final
            title: Text(post.title),
            onTap: () { //Al pulsar
              return Navigator
                  .push( //push empuja una nueva ventana y pop vuelve atras, dos parametros
                context, //context porque si
                //Envia a postdetails
                MaterialPageRoute(builder: (context) => PostDetails(post)),
              );
            },
          );
        },
      );
    } else {
      return CircularProgressIndicator();
    }*/
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}