import 'dart:convert';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:corona_hack/myStatsDetails.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'loading_screen.dart';

class MyStats extends StatefulWidget {
  @override
  _MyStatsState createState() => _MyStatsState();
}

class _MyStatsState extends State<MyStats> {
  String url = 'https://api.rootnet.in/covid19-in/stats/latest';
  var data;
  Future<String> makeRequest() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    setState(() {
      data = jsonDecode(response.body);
    });
    return "";
  }

  @override
  void initState() {
    makeRequest();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return MyLoadingScreen();
    }
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
          
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                colors: [
                  Colors.grey[700],
                  Colors.grey[400],
                  Colors.white
                ]
              )
              ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: ListView(
              children: <Widget>[
                //Add list here
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  child: ListTile(
                    title: Text(
                      "COVID-19",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    subtitle: Text(
                      "Statistics in India",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                  ),
                ),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: ListTile(
                      title: Text(
                        "Total Cases",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            ),
                      ),
                      trailing: Text(
                        data['data']['summary']['total'].toString(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800, //900
                            fontFamily: 'Product Sans'),
                      ),
                    )),
                Padding(padding: EdgeInsets.all(5)),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ListTile(
                    title: Text(
                      "Indian Cases",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    trailing: Text(
                      data['data']['summary']['confirmedCasesIndian']
                          .toString(),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.indigoAccent,
                          fontFamily: 'Product Sans'),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ListTile(
                    title: Text(
                      "Foreign Cases",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    trailing: Text(
                      data['data']['summary']['confirmedCasesForeign']
                          .toString(),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.deepOrangeAccent,
                          fontFamily: 'Product Sans'),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ListTile(
                    title: Text(
                      "Recovered",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    trailing: Text(
                      data['data']['summary']['discharged'].toString(),
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.teal,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Product Sans'),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ListTile(
                    title: Text(
                      "Deaths",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    trailing: Text(
                      data['data']['summary']['deaths'].toString(),
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ListTile(
                    title: Text(
                      "Active Cases",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    trailing: Text(
                      " ${int.parse(data['data']['summary']['total'].toString()) - int.parse(data['data']['summary']['deaths'].toString()) - int.parse(data['data']['summary']['discharged'].toString())}",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: OutlineButton(
                    textColor: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "List of Indian States",
                          style: TextStyle(
                              fontSize: 18, 
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 20,
                        )
                      ],
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/detail'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: RaisedButton(
                    color: Colors.white,
                    textColor: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Global Statistics",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                               fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 20,
                        )
                      ],
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/globe'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyStatsGlobal extends StatefulWidget {
  @override
  _MyStatsGlobalState createState() => _MyStatsGlobalState();
}

class _MyStatsGlobalState extends State<MyStatsGlobal> {
  String url = 'https://covid2019-api.herokuapp.com/v2/total';
  var data;
  Future<String> makeRequest() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    setState(() {
      data = jsonDecode(response.body);
    });
    return "";
  }

  @override
  void initState() {
    makeRequest();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return MyLoadingScreen();
    }
    return SafeArea(
          child: Scaffold(
            appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.white,
          title: Text(
            "Go Back",
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(5, 20, 5, 18),
          child: ListView(
            children: <Widget>[
              
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: ListTile(
                  title: Text(
                    "COVID-19",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Product Sans',
                    ),
                  ),
                  subtitle: Text(
                    "Global Statistics*",
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Ionicons.md_globe,
                      size: 40,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ListTile(
                    title: Text(
                      "Total Cases",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Product Sans'),
                    ),
                    trailing: Text(
                      data['data']['confirmed'].toString(),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Product Sans'),
                    ),
                  )),
              Padding(padding: EdgeInsets.all(5)),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: ListTile(
                  title: Text(
                    "Recovered",
                    style:
                        TextStyle(fontSize: 20, fontFamily: 'Product Sans'),
                  ),
                  trailing: Text(
                    data['data']['recovered'].toString(),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.teal,
                        fontFamily: 'Product Sans'),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: ListTile(
                  title: Text(
                    "Deaths",
                    style:
                        TextStyle(fontSize: 20, fontFamily: 'Product Sans'),
                  ),
                  trailing: Text(
                    data['data']['deaths'].toString(),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.redAccent,
                        fontFamily: 'Product Sans'),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: ListTile(
                  title: Text(
                    "Active Cases",
                    style:
                        TextStyle(fontSize: 20, fontFamily: 'Product Sans'),
                  ),
                  trailing: Text(
                    data['data']['active'].toString(),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Product Sans'),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: RaisedButton(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Detailed Statistics",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black
                            ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      )
                    ],
                  ),
                  onPressed: () =>
                      Navigator.pushNamed(context, '/globeDetail'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 15),
                child: Text(
                  "The number of Confirmed cases, death, and recovered cases are based on the data provided by api-covid19-in.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyStatsScaffold extends StatefulWidget {
  @override
  _MyStatsScaffoldState createState() => _MyStatsScaffoldState();
}

class _MyStatsScaffoldState extends State<MyStatsScaffold> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: MyStats(),
        ),
      ),
    );
  }
}

