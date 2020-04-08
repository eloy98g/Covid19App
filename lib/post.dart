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

/*
class Country{
  //final Sitedata sitedata;
  final List<CountryItems> countryitems;

  Country({
    //this.sitedata,
    this.countryitems
  });

  factory Country.fromJson(Map<String, dynamic> json){
    var list = json['countryitems'] as List;
    List<CountryItems> resultsList = list.map((i) => CountryItems.fromJson(i)).toList();

    return Country(
      countryitems: resultsList,
      //sitedata: Sitedata.fromJson(json['sitedata']),
    );
  }
}

class CountryItems{
  final int ourid;
  final String title;
  final String code;
  final String source;
  final int totalCases;//
  final int total_recovered;
  final int total_unresolved;
  final int total_deaths;
  final int total_new_cases_today;
  final int total_new_deaths_today;
  final int total_active_cases;
  final int total_serius_cases;

  CountryItems({
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
  });

  factory CountryItems.fromJson(Map<String, dynamic> json){
    return CountryItems(
      ourid: json['ourid'],
      title: json['title'],
      code: json['code'],
      source: json['source'],
      totalCases: json['total_cases'],
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

class Sitedata{

  final Info info;

  Sitedata({
    this.info
  });

  factory Sitedata.fromJson(Map<String, dynamic> json){
    return Sitedata(
      info: Info.fromJson(json['info']),
    );
  }
}

class Info{
  final String source;

  Info({
    this.source
  });

  factory Info.fromJson(Map<String, dynamic> json){
    return Info(
      source: json['source'],
    );
  }
}

class Countrynewsitems {
  final String newsid;
  final String title;
  final String image;
  final String time;
  final String url;

  Countrynewsitems({
   this.newsid,
   this.title,
   this.image,
   this.time,
   this.url
  });

  factory Countrynewsitems.fromJson(Map<String, dynamic> json){
    return Countrynewsitems(
      newsid: json['newsid'],
      title: json['title'],
      image: json['image'],
      time: json['time'],
      url: json['url'],
    );
  }
}

 */
