import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'loading_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class MyNews extends StatefulWidget {
  @override
  _MyNewsState createState() => _MyNewsState();
}

class _MyNewsState extends State<MyNews> {
  final String url = "https://api.rootnet.in/covid19-in/notifications";
  List data;
  bool isDataLoaded = false;

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    //print(response.body);
    setState(() {
      var convertDataToJson = json.decode(response.body);
      data = convertDataToJson['data']['notifications'];
      isDataLoaded = true;
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return MyLoadingScreen();
    }
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: isDataLoaded
              ? ListView.builder(
                  itemCount: data == null ? 0 : data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: GestureDetector(
                            child: Text(
                              data[index]['title'],
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                            onTap: () async {
                              String link =
                                  '${data[index]['link'].toString().split(',')[0]}';
                              if (await canLaunch(link)) {
                                await launch(link);
                              } else {
                                throw 'Could not launch $link';
                              }
                            },
                          ),
                        ),
                      ),
                    );
                  },
                )
              : Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.red,
                    strokeWidth: 6.0,
                  ),
                ),
        ),
      ),
    );
  }
}
