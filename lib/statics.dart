import 'package:corona_hack/db.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Datapage()));
      }),
      body: Column(
        children: <Widget>[
          TextField(
            controller: _controller,
          ),
          FlatButton(
              onPressed: () {
                saveName();
              },
              child: Text('save data'))
        ],
      ),
    );
  }

  void saveName() {
    String name = _controller.text;
    savedNamePref(name);
  }
}

class Datapage extends StatefulWidget {
  @override
  _DatapageState createState() => _DatapageState();
}

class _DatapageState extends State<Datapage> {
  String _name = "";
  @override
  void initState() {
    getNamePrf().then(updateData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Center(
        child: Text(_name),
      ),
    );
  }

  void updateData(String name) {
    setState(() {
      this._name = name;
    });
  }
}
