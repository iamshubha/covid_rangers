import 'package:corona_hack/myHelp.dart';
import 'package:corona_hack/myInfo.dart';
import 'package:corona_hack/myStats.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
 int _currentIndex= 0;
  //static const TextStyle optionStyle =  TextStyle(fontSize: 16);
  final tabs = [
    MyStats(),
        MyInfo(),
        NewsScreen(),
        MyHelp()
      ];
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
              appBar: AppBar(
                title: Text("Covidpedia"),
                centerTitle: true,
                backgroundColor: Colors.blue[400],//TODO:color
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
                selectedLabelStyle: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
                unselectedItemColor: Colors.grey[500],
                unselectedLabelStyle: TextStyle(color: Colors.grey[500], fontSize: 17),
                onTap: (index){
                  setState(() {
                    _currentIndex= index;
                  });
                },
              ),
    
        );
      }
    }

class PatientStatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
    
class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class GuidesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}