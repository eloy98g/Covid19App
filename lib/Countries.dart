import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:covidapp/countryClass.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async' show Future;

var debug;

class CountryData {
  String id;
  String ourid;
  String title;
  String code;
  String source;
  String totalCases;
  String total_recovered;
  String total_unresolved;
  String total_deaths;
  String total_new_cases_today;
  String total_new_deaths_today;
  String total_active_cases;
  String total_serius_cases;

  CountryData(
    this.ourid,
    this.title,
    this.code,
    this.source,
    this.totalCases,
    this.total_recovered,
    this.total_unresolved,
    this.total_deaths,
    this.total_new_cases_today,
    this.total_new_deaths_today,
    this.total_active_cases,
    this.total_serius_cases,
  );
}

Future<List<CountryData>> loadCountries()async{
  List<CountryData> countries = List();
  final respuesta = await http.get('https://api.thevirustracker.com/free-api?countryTotals=ALL');
  print('Respuesta STATUS: ${respuesta.statusCode}');

  if(respuesta.statusCode == 200){
    print('HE ENTRADO');
    final Country = CountryFromJson(respuesta.body);
    print('HE PASADO');

    for (int i = 0; i < Country.countries.length; i++) {
      Country.countries[i].forEach((key, value) {
        print(value.title);
        countries.add(CountryData(
            key,
            value.ourid.toString(),
            value.title,
            value.code,
            value.source,
            value.totalCases.toString(),
            value.total_recovered.toString(),
            value.total_unresolved.toString(),
            value.total_deaths.toString(),
            value.total_new_cases_today.toString(),
            value.total_new_deaths_today.toString(),
            value.total_serius_cases.toString()
        ));
      });
    }
    print('This is the coutries data ${countries.length}');
    return countries;
  }else{
    print('NO HE ENTRADO');
    throw Exception('Error al cargar los datos');
  }
}

@override
class CountriesStats extends StatelessWidget{
  Widget rendCountriesStats(BuildContext context, AsyncSnapshot<List<CountryData>> snapshot) {
    if(snapshot.hasError){
      return Text('Error!');
    }else if(snapshot.hasData){
      return ListView.separated(
        itemCount: snapshot.data.length,
        separatorBuilder: (context, i){
          return Divider();//Se puede ponder cualquier cosa
        },
        itemBuilder: (context, i){
          return ListTile(
            leading: Text(snapshot.data[i].title),//principio
            //trailing para el final
            title: Text(snapshot.data[i].title),
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
/*
  List<CountryData> countries = List();

  Future<String> loadFromAssets() async {
    return await http.get('https://api.thevirustracker.com/free-api?countryTotals=ALL').toString();
  }

  @override
  class CountriesStats extends StatelessWidget{
  loadCountryData() async {
    String jsonString = await loadFromAssets();
    final Country = CountryFromJson(jsonString);

    for (int i = 0; i < Country.countries.length; i++) {
      Country.countries[i].forEach((key, value) {
        print(value.title);
        countries.add(CountryData(
            key,
            value.ourid.toString(),
            value.title,
            value.code,
            value.source,
            value.totalCases.toString(),
            value.total_recovered.toString(),
            value.total_unresolved.toString(),
            value.total_deaths.toString(),
            value.total_new_cases_today.toString(),
            value.total_new_deaths_today.toString(),
            value.total_serius_cases.toString()
        ));
      });
    }
    print('This is the coutries data ${countries.length}');
  }

  Widget topCountries(BuildContext context) {
    loadCountryData();
    return ListView.separated(
      itemCount: countries.length,
      separatorBuilder: (context, i){
        return Divider();//Se puede ponder cualquier cosa
      },
      itemBuilder: (context, i){
        return ListTile(
          leading: Text(countries[i].code),//principio
          //trailing para el final
          title: Text(countries[i].title),
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
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}
*/



/*
  @override
  Widget build(BuildContext context) {
    loadCountryData();
    return ListView.separated(
      itemCount: countries.length,
      separatorBuilder: (context, i){
        return Divider();//Se puede ponder cualquier cosa
      },
      itemBuilder: (context, i){
        return ListTile(
          leading: Text(countries[i].code),//principio
          //trailing para el final
          title: Text(countries[i].title),
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
  }






/*
class Countries {
  String id;
  String ourid;
  String title;
  String code;
  String source;
  String totalCases;
  String total_recovered;
  String total_unresolved;
  String total_deaths;
  String total_new_cases_today;
  String total_new_deaths_today;
  String total_active_cases;
  String total_serius_cases;

  Countries(
    this.ourid,
    this.title,
    this.code,
    this.source,
    this.totalCases,
    this.total_recovered,
    this.total_unresolved,
    this.total_deaths,
    this.total_new_cases_today,
    this.total_new_deaths_today,
    this.total_active_cases,
    this.total_serius_cases,
  );
}


class MyApp extends StatefulWidget {
  @override
  TotalCountries createState() => TotalCountries();
}

class TotalCountries extends State<MyApp> {
  bool _isLoading = false;
  List<Object> objectList = List();
  List<Countries> countries = List();

  Future<String> loadFromAssets() async {
    return await rootBundle.loadString('https://api.thevirustracker.com/free-api?countryTotals=ALL');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadCountryData();
  }

  loadCountryData() async {
    setState(() {
      _isLoading = true;
    });

    String jsonString = await loadFromAssets();
    final Country = CountryFromJson(jsonString);

    for (int i = 0; i < Country.countries.length; i++) {
      Country.countries[i].forEach((key, value) {
        print(value.title);
        countries.add(Countries(
          key,
          value.ourid.toString(),
          value.title,
          value.code,
          value.source,
          value.totalCases.toString(),
          value.total_recovered.toString(),
          value.total_unresolved.toString(),
          value.total_deaths.toString(),
          value.total_new_cases_today.toString(),
          value.total_new_deaths_today.toString(),
          value.total_serius_cases.toString()
          ));
      });
    }
    print('This is the coutries data ${countries.length}');

    setState(() {
      _isLoading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    String selectedFruit;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            child: new ListView.builder(
                itemCount: countries.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text('Coutrt name :'),
                                Text(countries[index].name)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(' Confirmed :'),
                                Text(countries[index].confirmed)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(' Death:'),
                                Text(countries[index].deaths)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text('Recovered:'),
                                Text(countries[index].recovered)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })),
      ),
    );
  }
}

//////////////////////////////////////////////////7
 */
/*
Future<Country> cargarCountryList()async{
  final respuesta = await http.get('https://thevirustracker.com/free-api?countryTotals=ALL');

  if(respuesta.statusCode == 200){
    Country post = Country.fromJson(json.decode(respuesta.body) as Map<String, dynamic>);
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
      print(snapshot.data);
      Country post = snapshot.data;
      return ListView.separated(
        itemCount: 2,
        separatorBuilder: (context, i){
          return Divider();
        },
        itemBuilder: (context, i){
          return ListTile(
            leading: Text(snapshot.data.),
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
}*/*/