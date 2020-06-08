import 'package:shared_preferences/shared_preferences.dart';

Future<bool> savedNamePref(String name) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setString("name", name);
  return preferences.commit();
}

Future<String> getNamePrf() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  String name = preferences.getString("name");
  return name;
}
