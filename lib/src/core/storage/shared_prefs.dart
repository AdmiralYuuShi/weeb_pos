import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static const String _uid = 'kongou';
  static const String _merchantId = 'hiei';
  static const String _userName = 'haruna';
  static const String _userAvatar = 'kirishima';

  static SharedPreferences? _sharedPrefs;

  factory SharedPrefs() => SharedPrefs._internal();

  SharedPrefs._internal();

  Future<void> init() async {
    _sharedPrefs ??= await SharedPreferences.getInstance();
  }

  String get userId => _sharedPrefs?.getString(_uid) ?? '';
  set userId(String? value) => _sharedPrefs!.setString(_uid, value ?? '');

  String get merchantId => _sharedPrefs!.getString(_merchantId) ?? '';
  set merchantId(String? value) => _sharedPrefs!.setString(_merchantId, value ?? '');

  String get userName => _sharedPrefs!.getString(_userName) ?? '';
  set userName(String? value) => _sharedPrefs!.setString(_userName, value ?? '');

  String get userAvatar => _sharedPrefs!.getString(_userAvatar) ?? 'SG';
  set userAvatar(String? value) => _sharedPrefs!.setString(_userAvatar, value ?? '');

  static Future<bool> clearAll() async {
    return await _sharedPrefs!.clear();
  }
}
