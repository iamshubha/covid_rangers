import 'package:corona_hack/help_line.dart';
import 'package:corona_hack/myHelp.dart';
import 'package:corona_hack/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashscreen(),
            routes: {
        // '/detail': (context) => MyDetail(),
        // '/stats': (context) => MyStatsScaffold(),
        // '/globe': (context) => MyStatsGlobal(),
        // '/globeDetail': (context) => MyDetailGlobal(),
        '/MoreHelplines': (context) => MoreHelplines(),
        // '/TestCenters': (context) => MyTestCenters(),
        // '/ques1': (context) => Ques1(),
        // '/ques2': (context) => Ques2(),
        // '/ques3': (context) => Ques3(),
        // '/ques4': (context) => Ques4(),
        // '/ques5': (context) => Ques5(),
        // '/ques6': (context) => Ques6(),
        // '/ques7': (context) => Ques7(),
        // '/quesResult': (context) => QuesResult(),
      },
    );
  }
}


// class Home extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
      
//       home: MyHomePage(),
//       routes: {
//         '/detail': (context) => MyDetail(),
//         '/stats': (context) => MyStatsScaffold(),
//         '/globe': (context) => MyStatsGlobal(),
//         '/globeDetail': (context) => MyDetailGlobal(),
//         '/MoreHelplines': (context) => MoreHelplines(),
//         '/TestCenters': (context) => MyTestCenters(),
//         '/ques1': (context) => Ques1(),
//         '/ques2': (context) => Ques2(),
//         '/ques3': (context) => Ques3(),
//         '/ques4': (context) => Ques4(),
//         '/ques5': (context) => Ques5(),
//         '/ques6': (context) => Ques6(),
//         '/ques7': (context) => Ques7(),
//         '/quesResult': (context) => QuesResult(),
//       },
//     );
//   }
// }