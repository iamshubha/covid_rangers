import 'package:corona_hack/myHelp.dart';
import 'package:corona_hack/myStats.dart';
import 'package:flutter/material.dart';
import 'myGuide.dart';
import 'news.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int _currentIndex = 0;
  //static const TextStyle optionStyle =  TextStyle(fontSize: 16);
  final tabs = [MyStats(), MyGuide(), MyNews(), MyHelp()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Covidpedia",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
        elevation: 10,
        backgroundColor: Colors.white, //TODO:color
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 28,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Guides'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.new_releases),
            title: Text('News'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            title: Text('Help'),
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(
            color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        unselectedItemColor: Colors.grey[500],
        unselectedLabelStyle: TextStyle(color: Colors.grey[500], fontSize: 17),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
