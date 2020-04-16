import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:covidapp/CountryList.dart';
import 'package:covidapp/post.dart';
import 'package:covidapp/GlobalStats.dart';
import 'package:charts_flutter/flutter.dart' as charts;

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
      body: Container(
        decoration: new BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.blue[800]],
              stops: [0.5, 0.8],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GlobalStats().DoubleSlotGlobal(
                      post.total_cases.toString(),
                      'TOTAL INFECTED',
                      '+' + post.total_new_cases_today.toString(),
                      'CASES TODAY',
                      Colors.black,
                      false,
                    ),
                  ),
                  Expanded(
                    child: GlobalStats().DoubleSlotGlobal(
                      post.total_deaths.toString(),
                      'TOTAL DEATHS',
                      '+' + post.total_new_deaths_today.toString(),
                      'DEATHS TODAY',
                      Colors.black,
                      false,
                    ),
                  ),
                  Expanded(
                    child: GlobalStats().DoubleSlotGlobal(
                      post.total_recovered.toString(),
                      'TOTAL RECOVERED',
                      '',
                      '',
                      Colors.black,
                      true,
                    ),
                  ),
                ],
              )
            ),
            Expanded(
              child: Container(
                color: Color.fromRGBO(253, 245, 243, 0.3),
                padding: new EdgeInsets.all(15.0),
                margin: EdgeInsets.all(8.0),
                child: dailyChart()
              ),
            ),
          ],
        )
      )
    );
  }
}

class dailyChart extends StatelessWidget{
  final List<DateData> post = ((json.decode(prueba) as List).map((post) => DateData.fromJson(post)).toList());

  @override
  Widget build(BuildContext context) {
    List<charts.Series<DateData, String>> series
    = [
      charts.Series(
        id: "new_daily_cases",
        data: post,
        domainFn: (DateData series, _) =>
        series.date,
        measureFn: (DateData series, _) =>
        series.new_daily_cases,
        colorFn: (_, __) => charts.MaterialPalette.black,
      )
    ];
    return Container(
      child: Column(
        children: <Widget>[
          Text("New daily cases"),
          Expanded(
            child: charts.BarChart(series, animate: true)
          )
        ]
      )
    );
  }
}



String prueba = '[{"date":"2/24/20","new_daily_cases":1,"new_daily_deaths":0,"total_cases":1,"total_recoveries":0,"total_deaths":0},{"date":"2/25/20","new_daily_cases":0,"new_daily_deaths":0,"total_cases":1,"total_recoveries":0,"total_deaths":0},{"date":"2/26/20","new_daily_cases":0,"new_daily_deaths":0,"total_cases":1,"total_recoveries":0,"total_deaths":0},{"date":"2/27/20","new_daily_cases":0,"new_daily_deaths":0,"total_cases":1,"total_recoveries":0,"total_deaths":0},{"date":"2/28/20","new_daily_cases":0,"new_daily_deaths":0,"total_cases":1,"total_recoveries":0,"total_deaths":0},{"date":"2/29/20","new_daily_cases":0,"new_daily_deaths":0,"total_cases":1,"total_recoveries":0,"total_deaths":0},{"date":"3/01/20","new_daily_cases":0,"new_daily_deaths":0,"total_cases":1,"total_recoveries":0,"total_deaths":0},{"date":"3/03/20","new_daily_cases":0,"new_daily_deaths":0,"total_cases":1,"total_recoveries":0,"total_deaths":0},{"date":"3/04/20","new_daily_cases":0,"new_daily_deaths":0,"total_cases":1,"total_recoveries":0,"total_deaths":0},{"date":"3/05/20","new_daily_cases":0,"new_daily_deaths":0,"total_cases":1,"total_recoveries":0,"total_deaths":0},{"date":"3/06/20","new_daily_cases":0,"new_daily_deaths":0,"total_cases":1,"total_recoveries":0,"total_deaths":0},{"date":"3/07/20","new_daily_cases":0,"new_daily_deaths":0,"total_cases":1,"total_recoveries":0,"total_deaths":0},{"date":"3/08/20","new_daily_cases":3,"new_daily_deaths":0,"total_cases":4,"total_recoveries":0,"total_deaths":0},{"date":"3/09/20","new_daily_cases":0,"new_daily_deaths":0,"total_cases":4,"total_recoveries":0,"total_deaths":0},{"date":"3/10/20","new_daily_cases":1,"new_daily_deaths":0,"total_cases":5,"total_recoveries":0,"total_deaths":0},{"date":"3/11/20","new_daily_cases":2,"new_daily_deaths":0,"total_cases":7,"total_recoveries":0,"total_deaths":0},{"date":"3/13/20","new_daily_cases":0,"new_daily_deaths":0,"total_cases":7,"total_recoveries":0,"total_deaths":0},{"date":"3/14/20","new_daily_cases":4,"new_daily_deaths":0,"total_cases":11,"total_recoveries":0,"total_deaths":0},{"date":"3/15/20","new_daily_cases":5,"new_daily_deaths":0,"total_cases":16,"total_recoveries":0,"total_deaths":0},{"date":"3/16/20","new_daily_cases":5,"new_daily_deaths":0,"total_cases":21,"total_recoveries":1,"total_deaths":0},{"date":"3/17/20","new_daily_cases":1,"new_daily_deaths":0,"total_cases":22,"total_recoveries":1,"total_deaths":0},{"date":"3/18/20","new_daily_cases":0,"new_daily_deaths":0,"total_cases":22,"total_recoveries":1,"total_deaths":0},{"date":"3/19/20","new_daily_cases":0,"new_daily_deaths":0,"total_cases":22,"total_recoveries":1,"total_deaths":0},{"date":"3/20/20","new_daily_cases":2,"new_daily_deaths":0,"total_cases":24,"total_recoveries":1,"total_deaths":0},{"date":"3/21/20","new_daily_cases":0,"new_daily_deaths":0,"total_cases":24,"total_recoveries":1,"total_deaths":0},{"date":"3/22/20","new_daily_cases":16,"new_daily_deaths":1,"total_cases":40,"total_recoveries":1,"total_deaths":1},{"date":"3/23/20","new_daily_cases":0,"new_daily_deaths":0,"total_cases":40,"total_recoveries":1,"total_deaths":1},{"date":"3/24/20","new_daily_cases":34,"new_daily_deaths":0,"total_cases":74,"total_recoveries":1,"total_deaths":1},{"date":"3/25/20","new_daily_cases":10,"new_daily_deaths":1,"total_cases":84,"total_recoveries":2,"total_deaths":2},{"date":"3/26/20","new_daily_cases":10,"new_daily_deaths":2,"total_cases":94,"total_recoveries":2,"total_deaths":4},{"date":"3/27/20","new_daily_cases":16,"new_daily_deaths":0,"total_cases":110,"total_recoveries":2,"total_deaths":4},{"date":"3/28/20","new_daily_cases":0,"new_daily_deaths":0,"total_cases":110,"total_recoveries":2,"total_deaths":4},{"date":"3/29/20","new_daily_cases":10,"new_daily_deaths":0,"total_cases":120,"total_recoveries":2,"total_deaths":4},{"date":"3/30/20","new_daily_cases":50,"new_daily_deaths":0,"total_cases":170,"total_recoveries":2,"total_deaths":4},{"date":"3/31/20","new_daily_cases":4,"new_daily_deaths":0,"total_cases":174,"total_recoveries":5,"total_deaths":4},{"date":"4/01/20","new_daily_cases":63,"new_daily_deaths":0,"total_cases":237,"total_recoveries":5,"total_deaths":4},{"date":"4/02/20","new_daily_cases":36,"new_daily_deaths":2,"total_cases":273,"total_recoveries":1,"total_deaths":6},{"date":"4/03/20","new_daily_cases":8,"new_daily_deaths":0,"total_cases":281,"total_recoveries":1,"total_deaths":6},{"date":"4/04/20","new_daily_cases":18,"new_daily_deaths":1,"total_cases":299,"total_recoveries":1,"total_deaths":7},{"date":"4/05/20","new_daily_cases":50,"new_daily_deaths":0,"total_cases":349,"total_recoveries":1,"total_deaths":7},{"date":"4/06/20","new_daily_cases":18,"new_daily_deaths":4,"total_cases":367,"total_recoveries":1,"total_deaths":11},{"date":"4/07/20","new_daily_cases":56,"new_daily_deaths":3,"total_cases":423,"total_recoveries":1,"total_deaths":14},{"date":"4/08/20","new_daily_cases":21,"new_daily_deaths":0,"total_cases":444,"total_recoveries":1,"total_deaths":14},{"date":"4/09/20","new_daily_cases":40,"new_daily_deaths":1,"total_cases":484,"total_recoveries":1,"total_deaths":15},{"date":"4/10/20","new_daily_cases":37,"new_daily_deaths":0,"total_cases":521,"total_recoveries":1,"total_deaths":15},{"date":"4/11/20","new_daily_cases":34,"new_daily_deaths":3,"total_cases":555,"total_recoveries":1,"total_deaths":18},{"date":"4/12/20","new_daily_cases":52,"new_daily_deaths":0,"total_cases":607,"total_recoveries":1,"total_deaths":18},{"date":"4/13/20","new_daily_cases":58,"new_daily_deaths":3,"total_cases":665,"total_recoveries":1,"total_deaths":21},{"date":"4/14/20","new_daily_cases":49,"new_daily_deaths":2,"total_cases":714,"total_recoveries":1,"total_deaths":23},{"date":"4/15/20","new_daily_cases":70,"new_daily_deaths":2,"total_cases":784,"total_recoveries":1,"total_deaths":25}]';