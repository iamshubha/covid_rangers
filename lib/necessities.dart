// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class Necessities extends StatefulWidget {
  @override
  _NecessitiesState createState() => _NecessitiesState();
}

class _NecessitiesState extends State<Necessities> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Online Stores",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          leading: BackButton(
            color: Colors.black,
          ),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  child: Center(
                      child: Card(
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        
                        Card(
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          elevation: 3,
                          child: ListTile(
                            leading: Icon(
                              Entypo.shop,
                              size: 28,
                            ),
                            title: Row(
                              children: <Widget>[
                                Text(
                                  "Grocery & Gourment Foods",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            subtitle: Text(
                              "online Store",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            onTap: () async {
                              const url = 'https://www.bigbasket.com/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          elevation: 3,
                          child: ListTile(
                            leading: Icon(
                              Entypo.shop,
                              size: 28,
                            ),
                            title: Row(
                              children: <Widget>[
                                Text(
                                  "Medicine Store",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            subtitle: Text(
                              "online Store",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            onTap: () async {
                              const url = 'https://www.netmeds.com/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          elevation: 3,
                          child: ListTile(
                            leading: Icon(
                              Entypo.shop,
                              size: 28,
                            ),
                            title: Row(
                              children: <Widget>[
                                Text(
                                  "Amazon",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            subtitle: Text(
                              "online Store",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            onTap: () async {
                              const url = 'https://www.amazon.in/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          elevation: 3,
                          child: ListTile(
                            leading: Icon(
                              Entypo.shop,
                              size: 28,
                            ),
                            title: Row(
                              children: <Widget>[
                                Text(
                                  "Flipkart",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            subtitle: Text(
                              "online Store",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            onTap: () async {
                              const url = 'https://www.flipkart.com/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
