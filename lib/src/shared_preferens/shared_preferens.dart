import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static final UserPreferences _instacia = UserPreferences._internal();

  factory UserPreferences() {
    return _instacia;
  }
  UserPreferences._internal();

  late SharedPreferences _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

//todo: DATA ***************************************************
  //************ */ GET y SET  saveUser
  bool get saveUser {
    return _prefs.getBool('saveUser') ?? false;
  }

  set saveUser(bool value) {
    _prefs.setBool('saveUser', value);
  }
}
