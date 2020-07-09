import 'dart:convert';
import 'package:covid/data.dart';
import 'package:http/http.dart' as http;

Future<List> getData() async {

  //getting and parsing the covid data
  List<Data> datalist;
  String link = "https://api.covid19india.org/data.json";
  var res1 = await http
      .get(Uri.encodeFull(link));
  if (res1.statusCode == 200) {
    var data = json.decode(res1.body);
    var rest = data["statewise"] as List;
    datalist = rest.map<Data>((json) => Data.fromJson(json)).toList();
  }


  //getting and parsing covid news data
  List<dynamic> newslist1;
  List<dynamic> newslist2;
  List<dynamic> newslist3;
  String newslink='https://covid-19india-api.herokuapp.com/headlines';
  var res2 =await http.get(Uri.encodeFull(newslink));
  if(res2.statusCode==200){
    var news =jsonDecode(res2.body);
    var newsrest =news['headlines'] as List;
    var newsrest2 =news['headlines_summary'] as List;
    var newsrest3 =news['image_link'] as List;
    newslist1 = newsrest.toList();
    newslist2 = newsrest2.toList();
    newslist3 = newsrest3.toList();
  }

  //getting and parsing helpline data
  List<Helpline> listhelp;
  String helplink = "https://covid-19india-api.herokuapp.com/helpline_numbers";
  var res3 = await http.get(Uri.encodeFull(helplink));
  if (res3.statusCode == 200) {
    var helpdata = json.decode(res3.body);
    var helprest = helpdata["contact_details"] as List;
    listhelp = helprest.map<Helpline>((json) => Helpline.fromJson(json)).toList();
  }


  //getting and parsing worldwide covid list and news update
  world worldlist;
  List<dynamic> up;
  String worldlink = "https://covid-19india-api.herokuapp.com/global";
  var res4 = await http.get(Uri.encodeFull(worldlink));
  if (res4.statusCode == 200) {
    var worlddata = json.decode(res4.body);
    var worldrest = worlddata["data"];
    var worldrest2 =worlddata['updates'] as List;
    worldlist = world.fromJson(worldrest);
    up= worldrest2.toList();
  }

  return [datalist,[newslist1,newslist2,newslist3],listhelp,worldlist,up];
}







