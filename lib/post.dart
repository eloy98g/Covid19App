class Global{
  final List<Results> results;
  //final String stat;

  Global({
    this.results,
    //this.stat,
  });

  factory Global.fromJson(Map<String, dynamic> json){
    var list = json['results'] as List;
    List<Results> resultsList = list.map((i) => Results.fromJson(i)).toList();

    return Global(
      results: resultsList,
      //stat: json['stat'],
    );
  }
}

class Results{
  final int totalCases;//
  final int total_recovered;
  final int total_unresolved;
  final int total_deaths;
  final int total_new_cases_today;
  final int total_new_deaths_today;
  final int total_active_cases;
  final int total_serius_cases;
  //final Source source;

  Results({
    this.totalCases,
    this.total_recovered,
    this.total_unresolved,
    this.total_deaths,
    this.total_new_cases_today,
    this.total_new_deaths_today,
    this.total_active_cases,
    this.total_serius_cases,
    //this.source,
  });

  factory Results.fromJson(Map<String, dynamic> json){
    return Results(
      totalCases: json['total_cases'],
      total_recovered: json['total_recovered'],
      total_unresolved: json['total_unresolved'],
      total_deaths: json['total_deaths'],
      total_new_cases_today: json['total_new_cases_today'],
      total_new_deaths_today: json['total_new_deaths_today'],
      total_active_cases: json['total_active_cases'],
      total_serius_cases: json['total_serius_cases'],
      //source: Source.fromJson(json['source']),
    );
  }
}

/////////////////////////////////////

class Country{
  final int ourid;
  final String title;
  final String code;
  final String source;
  final int total_cases;
  final int total_recovered;
  final int total_unresolved;
  final int total_deaths;
  final int total_new_cases_today;
  final int total_new_deaths_today;
  final int total_active_cases;
  final int total_serius_cases;

  Country({
    this.ourid,
    this.title,
    this.code,
    this.source,
    this.total_cases,
    this.total_recovered,
    this.total_unresolved,
    this.total_deaths,
    this.total_new_cases_today,
    this.total_new_deaths_today,
    this.total_active_cases,
    this.total_serius_cases,
  });

  factory Country.fromJson(Map<String, dynamic> json){
    return Country(
      ourid: json['ourid'],
      title: json['title'],
      code: json['code'],
      source: json['source'],
      total_cases: json['total_cases'],
      total_recovered: json['total_recovered'],
      total_unresolved: json['total_unresolved'],
      total_deaths: json['total_deaths'],
      total_new_cases_today: json['total_new_cases_today'],
      total_new_deaths_today: json['total_new_deaths_today'],
      total_active_cases: json['total_active_cases'],
      total_serius_cases: json['total_serius_cases'],
    );
  }
}

class DateData{
  final String date;
  final int new_daily_cases;
  final int new_daily_deaths;
  final int total_cases;
  final int total_recoveries;
  final int total_deaths;

  DateData({
    this.date,
    this.new_daily_cases,
    this.new_daily_deaths,
    this.total_cases,
    this.total_recoveries,
    this.total_deaths,
  });

  factory DateData.fromJson(Map<String, dynamic> json){
    return DateData(
      date: json["date"],
      new_daily_cases: json["new_daily_cases"],
      new_daily_deaths: json["new_daily_deaths"],
      total_cases: json["total_cases"],
      total_recoveries: json["total_recoveries"],
      total_deaths: json["total_deaths"],
    );
  }
}

//////////////////////////////////////////////


