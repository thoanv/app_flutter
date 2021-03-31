
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/models/User.dart';
import 'package:shop_app/services/api.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shop_app/screens/home/home_screen.dart';

class Auth extends ChangeNotifier {
  bool _isLoggedIn = false;
  User _user;
  String _token;

  bool get authenticated => _isLoggedIn;

  User get user => _user;

  final storage = new FlutterSecureStorage();

  void login(Map creds) async {
    try {
      var res = await CallApi().postData('sanctum/token', creds);
      print(res.statusCode);
      if (res.statusCode == 200) {
        String token = res.body;
        this.tryToken(token);
        print(res.body);
        _isLoggedIn = true;
        notifyListeners();
        return res;
      }
    } catch (e) {
      print('day rooif');
      print(e);
    }
  }

  void tryToken(String token) async {
    if (token == null) {
      return;
    } else {
      try {
        var res = await CallApi().getUser('api/user', token);
        _isLoggedIn = true;
        this.storeToken(token: token);
        this._user = User.fromJson(res.body);
        notifyListeners();
        print(_user);
      } catch (e) {
        print(e);
      }
    }
  }

  void storeToken({String token}) async {
    this.storage.write(key: 'token', value: token);
  }

  void logout() {
    _isLoggedIn = false;
    notifyListeners();
  }
}
