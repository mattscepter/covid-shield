class Data{
  final String active;
  final String confirmed;
  final String deaths;
  final String deltaconfirmed;
  final String deltadeaths;
  final String deltarecovered;
  final String lastupdatedtime;
  final String recovered;
  final String state;
  final String statecode;

  Data({this.active,
    this.confirmed,
    this.deaths,
    this.deltaconfirmed,
    this.deltadeaths,
    this.deltarecovered,
    this.lastupdatedtime,
    this.recovered,
    this.state,
    this.statecode,
  });

  factory Data.fromJson(Map<String,dynamic> json){
    return new Data(
      active: json['active'],
      confirmed: json['confirmed'],
      deaths: json['deaths'],
      deltaconfirmed: json['deltaconfirmed'],
      deltadeaths: json['deltadeaths'],
      deltarecovered: json['deltarecovered'],
      lastupdatedtime: json['lastupdatedtime'],
      recovered: json['recovered'],
      state: json['state'],
      statecode: json['statecode'],
    );
  }

}

class Helpline{
  final String helpno;
  final String state;

  Helpline({this.helpno,this.state});

  factory Helpline.fromJson(Map<String,dynamic> json){
    return new Helpline(
      helpno: json['helpline_number'],
      state: json['state_or_UT']
    );
  }
}


class world {
  final String confirmedCases;
  final String activeCases;
  final String recoveredCases;
  final String deathCases;
  final String activeRate;
  final String recoveredRate;
  final String deathRate;
  final String newCases;
  final String newDeaths;
  final String seriousCases;

  world({this.confirmedCases,
    this.activeCases,
    this.recoveredCases,
    this.deathCases,
    this.activeRate,
    this.recoveredRate,
    this.deathRate,
    this.newCases,
    this.newDeaths,
    this.seriousCases});

  factory world.fromJson(Map<String, dynamic> json) {
    return new world(
     confirmedCases : json['confirmed_cases'],
     activeCases : json['active_cases'],
     recoveredCases : json['recovered_cases'],
     deathCases : json['death_cases'],
     activeRate : json['active_rate'],
     recoveredRate : json['recovered_rate'],
     deathRate : json['death_rate'],
     newCases : json['new_cases'],
     newDeaths : json['new_deaths'],
     seriousCases : json['serious_cases'],
    );
  }
}
