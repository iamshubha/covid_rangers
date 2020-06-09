import 'package:corona_hack/myHelp.dart';
import 'package:flutter/material.dart';
// import 'myHelp.dart';

class MyAssesment extends StatefulWidget {
  @override
  _MyAssesmentState createState() => _MyAssesmentState();
}

class _MyAssesmentState extends State<MyAssesment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 10.0,
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      ListTile(
                        title: FittedBox(
                          child: Text(
                            "Worried about COVID-19 ?",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Take a Self-Assesment or go to a nearby Test Center",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset("assets/image1.png", height: 200,),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 5,
                    color: Colors.white,
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyQuiz())),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Take Assessment",
                        style: TextStyle(
                            fontSize: 18,
                            ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 5,
                    color: Colors.white,
                    onPressed: () =>
                        Navigator.pushNamed(context, '/TestCenters'),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Test Centers",
                        style: TextStyle(
                            fontSize: 18,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

int _point = 0;

class MyQuiz extends StatefulWidget {
  @override
  _MyQuizState createState() => _MyQuizState();
}

class _MyQuizState extends State<MyQuiz> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      _point = 0;
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back_ios,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Go Back",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20)),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          child: ListTile(
                            title: Center(
                              child: Text(
                                "Self-Assessment",
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            subtitle: Center(
                              child: Text(
                                "Check yourself",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(12),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 5, right: 5),
                                  child: ListTile(
                                    title: Text(
                                      "\tDisclaimer!",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 25,
                                          fontFamily: 'Product Sans'),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5, bottom: 8, right: 5),
                                  child: ListTile(
                                    title: Text(
                                      "The purpose of this self-assessment is to help you make decisions about seeking appropriate medical care. This system is not intended for the diagnosis or treatment of disease or other conditions, including COVID-19.\n\nThis system does not replace the judgment of healthcare professionals or the performance of any clinical assessment.\n\nTo provide information on the right level of care, we are going to ask you a series of questions.",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      child: RaisedButton(
                                        color: Colors.blueAccent,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "I don't Agree",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w800
                                              ),
                                            ),
                                          ],
                                        ),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      child: RaisedButton(
                                        color: Colors.blueAccent,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "I Agree",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w800,
                                                  ),
                                            ),
                                            Padding(padding: EdgeInsets.all(2)),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.white,
                                              size: 18,
                                            )
                                          ],
                                        ),
                                        onPressed: () =>
                                            Navigator.pushReplacementNamed(
                                                context, '/ques1'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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

class Ques1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _QuesFormat(
        "Do you have any travel record to countries like United States of America, China or any European Country in the past 4 weeks?",
        '/ques2', 'assets/image2.png');
  }
}

class Ques2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _QuesFormat("Have you been sick lately?", '/ques3', 'assets/image3.png');
  }
}

class Ques3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _QuesFormat("Are you caring of someone who is ill?", '/ques4', 'assets/image8.jpg');
  }
}

class Ques4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _QuesFormat("Do you have a heart disease or diabetes?", '/ques5', 'assets/image5.jpg');
  }
}

class Ques5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _QuesFormat("Do you have any respiratory illness?", '/ques6', 'assets/image7.jpg');
  }
}

class Ques6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _QuesFormat(
        "Do you have symptoms like dry cough, fever or difficulty in breathing?",
        '/ques7', 'assets/image9.jpg');
  }
}

class Ques7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _QuesFormat(
        "Have you consulted a doctor in the past 2 weeks?", '/quesResult', 'assets/image6.jpg');
  }
}

class _QuesFormat extends StatelessWidget {
  final String _str, _nav, _image;
  _QuesFormat(this._str, this._nav, this._image);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Colors.grey[400]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                FlatButton(
                  onPressed: () => Navigator.pop(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Close",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.close,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Card(
                        margin: EdgeInsets.all(20),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Image.asset("$_image",
                                  height: 200,
                                  ),
                                  ListTile(
                                    title: Text(
                                      _str,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Product Sans',
                                      ),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.all(10)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      RaisedButton(
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                              context, _nav);
                                          print(_point);
                                        },
                                        child: Text(
                                          "No",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontFamily: 'Product Sans'),
                                        ),
                                        color: Colors.blueAccent,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      RaisedButton(
                                        onPressed: () {
                                          ++_point;
                                          Navigator.pushReplacementNamed(
                                              context, _nav);
                                          print(_point);
                                        },
                                        child: Text(
                                          "Yes",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              ),
                                        ),
                                        color: Colors.blueAccent,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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

class QuesResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.grey[400],
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () => Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => MyQuiz())),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(
                            Icons.refresh,
                            size: 26,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Again",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () => Navigator.pop(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "Close",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Product Sans',
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 26,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      children: <Widget>[
                        _point >= 4
                            ? _SuspectCard()
                            : (_point >= 2 ? _IsolateCard() : _SafeCard()),
                        Padding(padding: EdgeInsets.all(5)),
                        Expanded(
                          child: ListView(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.all(3)),
                              NearHospital(),
                              Padding(padding: EdgeInsets.all(3)),
                              AllMyTestCenters(),
                              Padding(padding: EdgeInsets.all(3)),
                              MoHW(),
                              //Padding(padding: EdgeInsets.all(30))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SafeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: Colors.greenAccent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                "You are Safe!",
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Product Sans',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
              child: Text(
                "Please stay indoors and if you come in contact with anyone infected please visit a doctor and follow the self-isolation.\n\n*This result is one basis of your response",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SuspectCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: Colors.redAccent,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                "Suspected!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontFamily: 'Product Sans',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
              child: Text(
                "Immediate medical attention is needed. Tell the medical personal if you have been in contact with someone with COVID-19 or if you have recently been to an area where COVID-19 is spreading.\n\n*This result is one basis of your response",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _IsolateCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: Colors.yellowAccent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                "Isolate yourself!",
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Product Sans',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
              child: Text(
                "Stay in your room except to get medical care. Cover your coughs and sneezes. Clean your hands often.\n\n*This result is one basis of your response",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
