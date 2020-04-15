import 'dart:convert';

/*
class Country {
  Country({
    this.countries,
    this.dt,
    this.ts
  });

  Country.fromJson(Map<String, dynamic> map) {
    if (map['countries'] != null) {
      countries = <CountryItems>[];
      final remoteCountries = map['countries'][0] as Map;
      remoteCountries.forEach((v, e) {
        countries.add(CountryItems.fromJson(e as Map<String, dynamic>));
      });
    }
    dt = map['dt'] as String;
    ts = map['ts'] as double;
  }

  List<CountryItems> countries;
  String dt;
  double ts;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (countries != null) {
      data['countries'] = countries.map((v) => v.toJson()).toList();
    }
    data['dt'] = dt;
    data['ts'] = ts;
    return data;
  }
}

class CountryItems{
  final int ourid;
  final String title;
  final String code;
  final String source;
  final int totalCases;
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

  factory CountryItems.fromJson(Map<String, dynamic> json) => CountryItems(
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

  Map<String, dynamic> toJson() => {
    "ourid": ourid,
    "title": title,
    "code": code,
    "source": source,
    "totalCases": totalCases,
    "total_recovered": total_recovered,
    "total_unresolved": total_unresolved,
    "total_deaths": total_deaths,
    "total_new_cases_today": total_new_cases_today,
    "total_new_deaths_today": total_new_deaths_today,
    "total_active_cases": total_active_cases,
    "total_serius_cases": total_serius_cases,
  };

}
*/

//////////////////////////////////
/*
Country CountryFromJson(String str) => Country.fromJson(json.decode(str));

String CountryToJson(Country data) => json.encode(data.toJson());

class Country {
    List<Map<String, CountryItems>> countries;

    Country({
        this.countries,
    });

    factory Country.fromJson(Map<String, dynamic> json) => Country(
        countries: List<Map<String, CountryItems>>.from(json["countryitems"].map((x) => Map.from(x).map((k, v) => MapEntry<String, CountryItems>(k, CountryItems.fromJson(v))))),
    );

    Map<String, dynamic> toJson() => {
        "countryitems": List<dynamic>.from(countries.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())))),
    };
}

class CountryItems {
  final int ourid;
  final String title;
  final String code;
  final String source;
  final int totalCases;
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

  factory CountryItems.fromJson(Map<String, dynamic> json) =>
      CountryItems(
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

  Map<String, dynamic> toJson() =>
    {
      "ourid": ourid,
      "title": title,
      "code": code,
      "source": source,
      "totalCases": totalCases,
      "total_recovered": total_recovered,
      "total_unresolved": total_unresolved,
      "total_deaths": total_deaths,
      "total_new_cases_today": total_new_cases_today,
      "total_new_deaths_today": total_new_deaths_today,
      "total_active_cases": total_active_cases,
      "total_serius_cases": total_serius_cases,
    };

}
*/











Country CountryFromJson(String str) => Country.fromJson(json.decode(str));

String CountryToJson(Country data) => json.encode(data.toJson());

class Country {
  List<Sitedatum> sitedata;
  List<Countryitem> CountryItems;

  Country({
    this.sitedata,
    this.CountryItems,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
    sitedata: List<Sitedatum>.from(json["sitedata"].map((x) => Sitedatum.fromJson(x))),
    CountryItems: List<Countryitem>.from(json["CountryItems"].map((x) => Countryitem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "sitedata": List<dynamic>.from(sitedata.map((x) => x.toJson())),
    "CountryItems": List<dynamic>.from(CountryItems.map((x) => x.toJson())),
  };
}

class Countryitem {
  The1 the1;
  The1 the2;
  The1 the3;
  The1 the4;
  The1 the5;
  The1 the6;
  The1 the7;
  The1 the8;
  The1 the9;
  The1 the10;
  The1 the11;
  The1 the12;
  The1 the13;
  The1 the14;
  The1 the15;
  The1 the16;
  The1 the17;
  The1 the18;
  The1 the19;
  The1 the20;
  The1 the21;
  The1 the22;
  The1 the23;
  The1 the24;
  The1 the25;
  The1 the26;
  The1 the27;
  The1 the28;
  The1 the29;
  The1 the30;
  The1 the31;
  The1 the32;
  The1 the33;
  The1 the34;
  The1 the35;
  The1 the36;
  The1 the37;
  The1 the38;
  The1 the39;
  The1 the40;
  The1 the41;
  The1 the42;
  The1 the43;
  The1 the44;
  The1 the45;
  The1 the46;
  The1 the47;
  The1 the48;
  The1 the49;
  The1 the50;
  The1 the51;
  The1 the52;
  The1 the53;
  The1 the54;
  The1 the55;
  The1 the56;
  The1 the57;
  The1 the58;
  The1 the59;
  The1 the60;
  The1 the61;
  The1 the62;
  The1 the63;
  The1 the64;
  The1 the65;
  The1 the66;
  The1 the67;
  The1 the68;
  The1 the69;
  The1 the70;
  The1 the71;
  The1 the72;
  The1 the73;
  The1 the74;
  The1 the75;
  The1 the76;
  The1 the77;
  The1 the78;
  The1 the79;
  The1 the80;
  The1 the81;
  The1 the82;
  The1 the83;
  The1 the84;
  The1 the85;
  The1 the86;
  The1 the87;
  The1 the88;
  The1 the89;
  The1 the90;
  The1 the91;
  The1 the92;
  The1 the93;
  The1 the94;
  The1 the95;
  The1 the96;
  The1 the97;
  The1 the98;
  The1 the99;
  The1 the100;
  The1 the101;
  The1 the102;
  The1 the103;
  The1 the104;
  The1 the105;
  The1 the106;
  The1 the107;
  The1 the108;
  The1 the109;
  The1 the110;
  The1 the111;
  The1 the112;
  The1 the113;
  The1 the114;
  The1 the115;
  The1 the116;
  The1 the117;
  The1 the118;
  The1 the119;
  The1 the120;
  The1 the121;
  The1 the122;
  The1 the123;
  The1 the124;
  The1 the125;
  The1 the126;
  The1 the127;
  The1 the128;
  The1 the129;
  The1 the130;
  The1 the131;
  The1 the132;
  The1 the133;
  The1 the134;
  The1 the135;
  The1 the136;
  The1 the137;
  The1 the138;
  The1 the139;
  The1 the140;
  The1 the141;
  The1 the142;
  The1 the143;
  The1 the144;
  The1 the145;
  The1 the146;
  The1 the147;
  The1 the148;
  The1 the149;
  The1 the150;
  The1 the151;
  The1 the152;
  The1 the153;
  The1 the154;
  The1 the155;
  The1 the156;
  The1 the157;
  The1 the158;
  The1 the159;
  The1 the160;
  The1 the161;
  The1 the162;
  The1 the163;
  The1 the164;
  The1 the165;
  The1 the166;
  The1 the167;
  The1 the168;
  The1 the169;
  The1 the170;
  The1 the171;
  The1 the172;
  The1 the173;
  The1 the174;
  The1 the175;
  The1 the176;
  The1 the177;
  The1 the178;
  The1 the179;
  The1 the180;
  The1 the181;
  The1 the182;
  String stat;

  Countryitem({
    this.the1,
    this.the2,
    this.the3,
    this.the4,
    this.the5,
    this.the6,
    this.the7,
    this.the8,
    this.the9,
    this.the10,
    this.the11,
    this.the12,
    this.the13,
    this.the14,
    this.the15,
    this.the16,
    this.the17,
    this.the18,
    this.the19,
    this.the20,
    this.the21,
    this.the22,
    this.the23,
    this.the24,
    this.the25,
    this.the26,
    this.the27,
    this.the28,
    this.the29,
    this.the30,
    this.the31,
    this.the32,
    this.the33,
    this.the34,
    this.the35,
    this.the36,
    this.the37,
    this.the38,
    this.the39,
    this.the40,
    this.the41,
    this.the42,
    this.the43,
    this.the44,
    this.the45,
    this.the46,
    this.the47,
    this.the48,
    this.the49,
    this.the50,
    this.the51,
    this.the52,
    this.the53,
    this.the54,
    this.the55,
    this.the56,
    this.the57,
    this.the58,
    this.the59,
    this.the60,
    this.the61,
    this.the62,
    this.the63,
    this.the64,
    this.the65,
    this.the66,
    this.the67,
    this.the68,
    this.the69,
    this.the70,
    this.the71,
    this.the72,
    this.the73,
    this.the74,
    this.the75,
    this.the76,
    this.the77,
    this.the78,
    this.the79,
    this.the80,
    this.the81,
    this.the82,
    this.the83,
    this.the84,
    this.the85,
    this.the86,
    this.the87,
    this.the88,
    this.the89,
    this.the90,
    this.the91,
    this.the92,
    this.the93,
    this.the94,
    this.the95,
    this.the96,
    this.the97,
    this.the98,
    this.the99,
    this.the100,
    this.the101,
    this.the102,
    this.the103,
    this.the104,
    this.the105,
    this.the106,
    this.the107,
    this.the108,
    this.the109,
    this.the110,
    this.the111,
    this.the112,
    this.the113,
    this.the114,
    this.the115,
    this.the116,
    this.the117,
    this.the118,
    this.the119,
    this.the120,
    this.the121,
    this.the122,
    this.the123,
    this.the124,
    this.the125,
    this.the126,
    this.the127,
    this.the128,
    this.the129,
    this.the130,
    this.the131,
    this.the132,
    this.the133,
    this.the134,
    this.the135,
    this.the136,
    this.the137,
    this.the138,
    this.the139,
    this.the140,
    this.the141,
    this.the142,
    this.the143,
    this.the144,
    this.the145,
    this.the146,
    this.the147,
    this.the148,
    this.the149,
    this.the150,
    this.the151,
    this.the152,
    this.the153,
    this.the154,
    this.the155,
    this.the156,
    this.the157,
    this.the158,
    this.the159,
    this.the160,
    this.the161,
    this.the162,
    this.the163,
    this.the164,
    this.the165,
    this.the166,
    this.the167,
    this.the168,
    this.the169,
    this.the170,
    this.the171,
    this.the172,
    this.the173,
    this.the174,
    this.the175,
    this.the176,
    this.the177,
    this.the178,
    this.the179,
    this.the180,
    this.the181,
    this.the182,
    this.stat,
  });

  factory Countryitem.fromJson(Map<String, dynamic> json) => Countryitem(
    the1: The1.fromJson(json["1"]),
    the2: The1.fromJson(json["2"]),
    the3: The1.fromJson(json["3"]),
    the4: The1.fromJson(json["4"]),
    the5: The1.fromJson(json["5"]),
    the6: The1.fromJson(json["6"]),
    the7: The1.fromJson(json["7"]),
    the8: The1.fromJson(json["8"]),
    the9: The1.fromJson(json["9"]),
    the10: The1.fromJson(json["10"]),
    the11: The1.fromJson(json["11"]),
    the12: The1.fromJson(json["12"]),
    the13: The1.fromJson(json["13"]),
    the14: The1.fromJson(json["14"]),
    the15: The1.fromJson(json["15"]),
    the16: The1.fromJson(json["16"]),
    the17: The1.fromJson(json["17"]),
    the18: The1.fromJson(json["18"]),
    the19: The1.fromJson(json["19"]),
    the20: The1.fromJson(json["20"]),
    the21: The1.fromJson(json["21"]),
    the22: The1.fromJson(json["22"]),
    the23: The1.fromJson(json["23"]),
    the24: The1.fromJson(json["24"]),
    the25: The1.fromJson(json["25"]),
    the26: The1.fromJson(json["26"]),
    the27: The1.fromJson(json["27"]),
    the28: The1.fromJson(json["28"]),
    the29: The1.fromJson(json["29"]),
    the30: The1.fromJson(json["30"]),
    the31: The1.fromJson(json["31"]),
    the32: The1.fromJson(json["32"]),
    the33: The1.fromJson(json["33"]),
    the34: The1.fromJson(json["34"]),
    the35: The1.fromJson(json["35"]),
    the36: The1.fromJson(json["36"]),
    the37: The1.fromJson(json["37"]),
    the38: The1.fromJson(json["38"]),
    the39: The1.fromJson(json["39"]),
    the40: The1.fromJson(json["40"]),
    the41: The1.fromJson(json["41"]),
    the42: The1.fromJson(json["42"]),
    the43: The1.fromJson(json["43"]),
    the44: The1.fromJson(json["44"]),
    the45: The1.fromJson(json["45"]),
    the46: The1.fromJson(json["46"]),
    the47: The1.fromJson(json["47"]),
    the48: The1.fromJson(json["48"]),
    the49: The1.fromJson(json["49"]),
    the50: The1.fromJson(json["50"]),
    the51: The1.fromJson(json["51"]),
    the52: The1.fromJson(json["52"]),
    the53: The1.fromJson(json["53"]),
    the54: The1.fromJson(json["54"]),
    the55: The1.fromJson(json["55"]),
    the56: The1.fromJson(json["56"]),
    the57: The1.fromJson(json["57"]),
    the58: The1.fromJson(json["58"]),
    the59: The1.fromJson(json["59"]),
    the60: The1.fromJson(json["60"]),
    the61: The1.fromJson(json["61"]),
    the62: The1.fromJson(json["62"]),
    the63: The1.fromJson(json["63"]),
    the64: The1.fromJson(json["64"]),
    the65: The1.fromJson(json["65"]),
    the66: The1.fromJson(json["66"]),
    the67: The1.fromJson(json["67"]),
    the68: The1.fromJson(json["68"]),
    the69: The1.fromJson(json["69"]),
    the70: The1.fromJson(json["70"]),
    the71: The1.fromJson(json["71"]),
    the72: The1.fromJson(json["72"]),
    the73: The1.fromJson(json["73"]),
    the74: The1.fromJson(json["74"]),
    the75: The1.fromJson(json["75"]),
    the76: The1.fromJson(json["76"]),
    the77: The1.fromJson(json["77"]),
    the78: The1.fromJson(json["78"]),
    the79: The1.fromJson(json["79"]),
    the80: The1.fromJson(json["80"]),
    the81: The1.fromJson(json["81"]),
    the82: The1.fromJson(json["82"]),
    the83: The1.fromJson(json["83"]),
    the84: The1.fromJson(json["84"]),
    the85: The1.fromJson(json["85"]),
    the86: The1.fromJson(json["86"]),
    the87: The1.fromJson(json["87"]),
    the88: The1.fromJson(json["88"]),
    the89: The1.fromJson(json["89"]),
    the90: The1.fromJson(json["90"]),
    the91: The1.fromJson(json["91"]),
    the92: The1.fromJson(json["92"]),
    the93: The1.fromJson(json["93"]),
    the94: The1.fromJson(json["94"]),
    the95: The1.fromJson(json["95"]),
    the96: The1.fromJson(json["96"]),
    the97: The1.fromJson(json["97"]),
    the98: The1.fromJson(json["98"]),
    the99: The1.fromJson(json["99"]),
    the100: The1.fromJson(json["100"]),
    the101: The1.fromJson(json["101"]),
    the102: The1.fromJson(json["102"]),
    the103: The1.fromJson(json["103"]),
    the104: The1.fromJson(json["104"]),
    the105: The1.fromJson(json["105"]),
    the106: The1.fromJson(json["106"]),
    the107: The1.fromJson(json["107"]),
    the108: The1.fromJson(json["108"]),
    the109: The1.fromJson(json["109"]),
    the110: The1.fromJson(json["110"]),
    the111: The1.fromJson(json["111"]),
    the112: The1.fromJson(json["112"]),
    the113: The1.fromJson(json["113"]),
    the114: The1.fromJson(json["114"]),
    the115: The1.fromJson(json["115"]),
    the116: The1.fromJson(json["116"]),
    the117: The1.fromJson(json["117"]),
    the118: The1.fromJson(json["118"]),
    the119: The1.fromJson(json["119"]),
    the120: The1.fromJson(json["120"]),
    the121: The1.fromJson(json["121"]),
    the122: The1.fromJson(json["122"]),
    the123: The1.fromJson(json["123"]),
    the124: The1.fromJson(json["124"]),
    the125: The1.fromJson(json["125"]),
    the126: The1.fromJson(json["126"]),
    the127: The1.fromJson(json["127"]),
    the128: The1.fromJson(json["128"]),
    the129: The1.fromJson(json["129"]),
    the130: The1.fromJson(json["130"]),
    the131: The1.fromJson(json["131"]),
    the132: The1.fromJson(json["132"]),
    the133: The1.fromJson(json["133"]),
    the134: The1.fromJson(json["134"]),
    the135: The1.fromJson(json["135"]),
    the136: The1.fromJson(json["136"]),
    the137: The1.fromJson(json["137"]),
    the138: The1.fromJson(json["138"]),
    the139: The1.fromJson(json["139"]),
    the140: The1.fromJson(json["140"]),
    the141: The1.fromJson(json["141"]),
    the142: The1.fromJson(json["142"]),
    the143: The1.fromJson(json["143"]),
    the144: The1.fromJson(json["144"]),
    the145: The1.fromJson(json["145"]),
    the146: The1.fromJson(json["146"]),
    the147: The1.fromJson(json["147"]),
    the148: The1.fromJson(json["148"]),
    the149: The1.fromJson(json["149"]),
    the150: The1.fromJson(json["150"]),
    the151: The1.fromJson(json["151"]),
    the152: The1.fromJson(json["152"]),
    the153: The1.fromJson(json["153"]),
    the154: The1.fromJson(json["154"]),
    the155: The1.fromJson(json["155"]),
    the156: The1.fromJson(json["156"]),
    the157: The1.fromJson(json["157"]),
    the158: The1.fromJson(json["158"]),
    the159: The1.fromJson(json["159"]),
    the160: The1.fromJson(json["160"]),
    the161: The1.fromJson(json["161"]),
    the162: The1.fromJson(json["162"]),
    the163: The1.fromJson(json["163"]),
    the164: The1.fromJson(json["164"]),
    the165: The1.fromJson(json["165"]),
    the166: The1.fromJson(json["166"]),
    the167: The1.fromJson(json["167"]),
    the168: The1.fromJson(json["168"]),
    the169: The1.fromJson(json["169"]),
    the170: The1.fromJson(json["170"]),
    the171: The1.fromJson(json["171"]),
    the172: The1.fromJson(json["172"]),
    the173: The1.fromJson(json["173"]),
    the174: The1.fromJson(json["174"]),
    the175: The1.fromJson(json["175"]),
    the176: The1.fromJson(json["176"]),
    the177: The1.fromJson(json["177"]),
    the178: The1.fromJson(json["178"]),
    the179: The1.fromJson(json["179"]),
    the180: The1.fromJson(json["180"]),
    the181: The1.fromJson(json["181"]),
    the182: The1.fromJson(json["182"]),
    stat: json["stat"],
  );

  Map<String, dynamic> toJson() => {
    "1": the1.toJson(),
    "2": the2.toJson(),
    "3": the3.toJson(),
    "4": the4.toJson(),
    "5": the5.toJson(),
    "6": the6.toJson(),
    "7": the7.toJson(),
    "8": the8.toJson(),
    "9": the9.toJson(),
    "10": the10.toJson(),
    "11": the11.toJson(),
    "12": the12.toJson(),
    "13": the13.toJson(),
    "14": the14.toJson(),
    "15": the15.toJson(),
    "16": the16.toJson(),
    "17": the17.toJson(),
    "18": the18.toJson(),
    "19": the19.toJson(),
    "20": the20.toJson(),
    "21": the21.toJson(),
    "22": the22.toJson(),
    "23": the23.toJson(),
    "24": the24.toJson(),
    "25": the25.toJson(),
    "26": the26.toJson(),
    "27": the27.toJson(),
    "28": the28.toJson(),
    "29": the29.toJson(),
    "30": the30.toJson(),
    "31": the31.toJson(),
    "32": the32.toJson(),
    "33": the33.toJson(),
    "34": the34.toJson(),
    "35": the35.toJson(),
    "36": the36.toJson(),
    "37": the37.toJson(),
    "38": the38.toJson(),
    "39": the39.toJson(),
    "40": the40.toJson(),
    "41": the41.toJson(),
    "42": the42.toJson(),
    "43": the43.toJson(),
    "44": the44.toJson(),
    "45": the45.toJson(),
    "46": the46.toJson(),
    "47": the47.toJson(),
    "48": the48.toJson(),
    "49": the49.toJson(),
    "50": the50.toJson(),
    "51": the51.toJson(),
    "52": the52.toJson(),
    "53": the53.toJson(),
    "54": the54.toJson(),
    "55": the55.toJson(),
    "56": the56.toJson(),
    "57": the57.toJson(),
    "58": the58.toJson(),
    "59": the59.toJson(),
    "60": the60.toJson(),
    "61": the61.toJson(),
    "62": the62.toJson(),
    "63": the63.toJson(),
    "64": the64.toJson(),
    "65": the65.toJson(),
    "66": the66.toJson(),
    "67": the67.toJson(),
    "68": the68.toJson(),
    "69": the69.toJson(),
    "70": the70.toJson(),
    "71": the71.toJson(),
    "72": the72.toJson(),
    "73": the73.toJson(),
    "74": the74.toJson(),
    "75": the75.toJson(),
    "76": the76.toJson(),
    "77": the77.toJson(),
    "78": the78.toJson(),
    "79": the79.toJson(),
    "80": the80.toJson(),
    "81": the81.toJson(),
    "82": the82.toJson(),
    "83": the83.toJson(),
    "84": the84.toJson(),
    "85": the85.toJson(),
    "86": the86.toJson(),
    "87": the87.toJson(),
    "88": the88.toJson(),
    "89": the89.toJson(),
    "90": the90.toJson(),
    "91": the91.toJson(),
    "92": the92.toJson(),
    "93": the93.toJson(),
    "94": the94.toJson(),
    "95": the95.toJson(),
    "96": the96.toJson(),
    "97": the97.toJson(),
    "98": the98.toJson(),
    "99": the99.toJson(),
    "100": the100.toJson(),
    "101": the101.toJson(),
    "102": the102.toJson(),
    "103": the103.toJson(),
    "104": the104.toJson(),
    "105": the105.toJson(),
    "106": the106.toJson(),
    "107": the107.toJson(),
    "108": the108.toJson(),
    "109": the109.toJson(),
    "110": the110.toJson(),
    "111": the111.toJson(),
    "112": the112.toJson(),
    "113": the113.toJson(),
    "114": the114.toJson(),
    "115": the115.toJson(),
    "116": the116.toJson(),
    "117": the117.toJson(),
    "118": the118.toJson(),
    "119": the119.toJson(),
    "120": the120.toJson(),
    "121": the121.toJson(),
    "122": the122.toJson(),
    "123": the123.toJson(),
    "124": the124.toJson(),
    "125": the125.toJson(),
    "126": the126.toJson(),
    "127": the127.toJson(),
    "128": the128.toJson(),
    "129": the129.toJson(),
    "130": the130.toJson(),
    "131": the131.toJson(),
    "132": the132.toJson(),
    "133": the133.toJson(),
    "134": the134.toJson(),
    "135": the135.toJson(),
    "136": the136.toJson(),
    "137": the137.toJson(),
    "138": the138.toJson(),
    "139": the139.toJson(),
    "140": the140.toJson(),
    "141": the141.toJson(),
    "142": the142.toJson(),
    "143": the143.toJson(),
    "144": the144.toJson(),
    "145": the145.toJson(),
    "146": the146.toJson(),
    "147": the147.toJson(),
    "148": the148.toJson(),
    "149": the149.toJson(),
    "150": the150.toJson(),
    "151": the151.toJson(),
    "152": the152.toJson(),
    "153": the153.toJson(),
    "154": the154.toJson(),
    "155": the155.toJson(),
    "156": the156.toJson(),
    "157": the157.toJson(),
    "158": the158.toJson(),
    "159": the159.toJson(),
    "160": the160.toJson(),
    "161": the161.toJson(),
    "162": the162.toJson(),
    "163": the163.toJson(),
    "164": the164.toJson(),
    "165": the165.toJson(),
    "166": the166.toJson(),
    "167": the167.toJson(),
    "168": the168.toJson(),
    "169": the169.toJson(),
    "170": the170.toJson(),
    "171": the171.toJson(),
    "172": the172.toJson(),
    "173": the173.toJson(),
    "174": the174.toJson(),
    "175": the175.toJson(),
    "176": the176.toJson(),
    "177": the177.toJson(),
    "178": the178.toJson(),
    "179": the179.toJson(),
    "180": the180.toJson(),
    "181": the181.toJson(),
    "182": the182.toJson(),
    "stat": stat,
  };
}

class The1 {
  int ourid;
  String title;
  String code;
  String source;
  int totalCases;
  int totalRecovered;
  int totalUnresolved;
  int totalDeaths;
  int totalNewCasesToday;
  int totalNewDeathsToday;
  int totalActiveCases;
  int totalSeriousCases;

  The1({
    this.ourid,
    this.title,
    this.code,
    this.source,
    this.totalCases,
    this.totalRecovered,
    this.totalUnresolved,
    this.totalDeaths,
    this.totalNewCasesToday,
    this.totalNewDeathsToday,
    this.totalActiveCases,
    this.totalSeriousCases,
  });

  factory The1.fromJson(Map<String, dynamic> json) => The1(
    ourid: json["ourid"],
    title: json["title"],
    code: json["code"],
    source: json["source"],
    totalCases: json["total_cases"],
    totalRecovered: json["total_recovered"],
    totalUnresolved: json["total_unresolved"],
    totalDeaths: json["total_deaths"],
    totalNewCasesToday: json["total_new_cases_today"],
    totalNewDeathsToday: json["total_new_deaths_today"],
    totalActiveCases: json["total_active_cases"],
    totalSeriousCases: json["total_serious_cases"],
  );

  Map<String, dynamic> toJson() => {
    "ourid": ourid,
    "title": title,
    "code": code,
    "source": source,
    "total_cases": totalCases,
    "total_recovered": totalRecovered,
    "total_unresolved": totalUnresolved,
    "total_deaths": totalDeaths,
    "total_new_cases_today": totalNewCasesToday,
    "total_new_deaths_today": totalNewDeathsToday,
    "total_active_cases": totalActiveCases,
    "total_serious_cases": totalSeriousCases,
  };
}

class Sitedatum {
  Info info;

  Sitedatum({
    this.info,
  });

  factory Sitedatum.fromJson(Map<String, dynamic> json) => Sitedatum(
    info: Info.fromJson(json["info"]),
  );

  Map<String, dynamic> toJson() => {
    "info": info.toJson(),
  };
}

class Info {
  String source;

  Info({
    this.source,
  });

  factory Info.fromJson(Map<String, dynamic> json) => Info(
    source: json["source"],
  );

  Map<String, dynamic> toJson() => {
    "source": source,
  };
}