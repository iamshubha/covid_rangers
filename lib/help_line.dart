import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String url = "https://api.rootnet.in/covid19-in/contacts";
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
    // print(response.body);
    setState(() {
      var convertDataToJson = json.decode(response.body);
      data = convertDataToJson['data']['contacts']['regional'];
      isDataLoaded = true;
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Helpline"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blueGrey[900],
        child: isDataLoaded
            ? ListView.builder(
                itemCount: data == null ? 0 : data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.grey,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(
                              data[index]['loc'],
                              style: TextStyle(fontSize: 25,color: Colors.black87),
                            ),
                            subtitle: Text(
                              data[index]['number'],
                               style: TextStyle(fontSize: 20,color: Colors.black),
                            ),
                            trailing: IconButton(icon: Icon(Icons.call),onPressed: (){
                              launch.call('tel:${data[index]['number']}');
                            },color: Colors.black,),
                          )
                          
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
    );
  }
}
