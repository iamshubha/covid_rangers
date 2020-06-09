import 'dart:convert';
import 'package:corona_hack/splash.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import 'loading_screen.dart';

class MyHelp extends StatefulWidget {
  @override
  _MyHelpState createState() => _MyHelpState();
}

class _MyHelpState extends State<MyHelp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        //color: Colors.grey[300],
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: ListView(
            children: <Widget>[
              //Add list here
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                child: ListTile(
                  title: Text(
                    "Need Help ?",
                    style: TextStyle(
                      color: Colors.blueGrey[900],
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: Text(
                    "We are here for you",
                    style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              NearHospital(),
              Padding(padding: EdgeInsets.all(5)),
              MoHW(),
              Padding(padding: EdgeInsets.all(5)),
              AllMyTestCenters(),
              Padding(padding: EdgeInsets.all(5)),
              Card(
                margin: EdgeInsets.all(5),
                child: ListTile(
                    leading: Icon(
                      Icons.more_vert,
                      size: 30,
                    ),
                    title: Text(
                      "More helplines",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MoreHelplines()))
                    // Navigator.pushNamed(context, '/MoreHelplines'),
                    ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Card(
                margin: EdgeInsets.all(5),
                child: ListTile(
                  leading: Icon(
                    Icons.help_outline,
                    size: 30,
                  ),
                  title: Text(
                    "FAQs",
                    style: TextStyle(
            fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () async {
                    const url = 'https://www.mohfw.gov.in/pdf/FAQ.pdf';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'Product Sans'),
                    children: [
                      TextSpan(text: "Designed and Developed by\t"),
                      TextSpan(
                        text: "\nShubha Banerjee & Shoili Chowdhury",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      // TextSpan(text: "\t&\t"),
                      // TextSpan(
                      //   text: "Sahil Pulikal",
                      //   style: TextStyle(
                      //     color: Colors.white,
                      //     fontWeight: FontWeight.w500,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NearHospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5),
      child: ListTile(
        leading: Icon(
          MaterialCommunityIcons.google_maps,
          size: 30,
        ),
        title: Text(
          "Visit nearest Hospital",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800),
        ),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () async {
          const url =
              'https://www.google.com/maps/search/?api=1&query=hospitals+near+me';
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
      ),
    );
  }
}

class MoHW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ListTile(
            title: Text(
              "Ministry of Health & Family Welfare",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            elevation: 3,
            child: ListTile(
              leading: Icon(
                Entypo.old_phone,
                size: 28,
              ),
              title: Row(
                children: <Widget>[
                  Text(
                    "Call 1075",
                    style: TextStyle(
                        fontSize: 18,
                    fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              subtitle: Text("Toll-free Number",
              style: TextStyle(
                    fontWeight: FontWeight.w800
              ),
              ),
              onTap: () async {
                const call = 'tel:1075';
                if (await canLaunch(call)) {
                  await launch(call);
                } else {
                  throw 'Could not launch $call';
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
                Ionicons.ios_call,
                size: 30,
              ),
              title: Text("Helpline Number",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800
                  )),
              subtitle: Text(
                "+91-11-23978046",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.black,),
              ),
              onTap: () async {
                const phoneNo = 'tel:+91-11-23978046';
                if (await canLaunch(phoneNo)) {
                  await launch(phoneNo);
                } else {
                  throw 'Could not launch $phoneNo';
                }
              },
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
            elevation: 3,
            child: ListTile(
              leading: Icon(
                Entypo.mail,
                size: 28,
              ),
              title: Text("Helpline Email ID",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800)),
              subtitle: Text(
                "ncov2019@gov.in",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    fontFamily: 'Product Sans'),
              ),
              onTap: () async {
                const mailTo =
                    'mailto:ncov2019@gov.in?subject=COVID-19%20Regd.';
                if (await canLaunch(mailTo)) {
                  await launch(mailTo);
                } else {
                  throw 'Could not launch $mailTo';
                }
              },
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}

class MoreHelplines extends StatefulWidget {
  @override
  _MoreHelplinesState createState() => _MoreHelplinesState();
}

class _MoreHelplinesState extends State<MoreHelplines> {
  String url = 'https://api.rootnet.in/covid19-in/contacts';
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
    super.initState();
    makeRequest();
  }

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return MyLoadingScreen(); //MyLoadingScreen();
    }
    return SafeArea(
          child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: FlatButton(
                  onPressed: () => Navigator.pop(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Go Back",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: data == null
                      ? 0
                      : data['data']['contacts']['regional'].length,
                  itemBuilder: (BuildContext context, i) {
                    //print(data['data']['contacts']['regional'][i].length);
                    return Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Card(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: ListTile(
                          leading: Icon(
                            Ionicons.ios_call,
                            size: 30,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                          title: Text(
                            "${data['data']['contacts']['regional'][i]['loc'].toString()}",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            "${data['data']['contacts']['regional'][i]['number'].toString().split(',')[0]}",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          onTap: () async {
                            String phoneNo =
                                'tel:${data['data']['contacts']['regional'][i]['number'].toString().split(',')[0]}';
                            if (await canLaunch(phoneNo)) {
                              await launch(phoneNo);
                            } else {
                              throw 'Could not launch $phoneNo';
                            }
                          },
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AllMyTestCenters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5),
      child: ListTile(
        leading: Icon(
          MaterialCommunityIcons.hospital_building,
          size: 30,
        ),
        title: Text(
          "Test Centers",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () => Navigator.pushNamed(context, '/TestCenters'),
      ),
    );
  }
}
