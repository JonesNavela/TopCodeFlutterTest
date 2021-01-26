import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test_json/model/user.dart';
import 'package:http/http.dart' as http;

class UsersApi {
  static Future<List<User>> getUsers() async {
    final url =
        'http://us-central1-momentumtest-bfdef.cloudfunctions.net/app/api/v1/account/findByUserId?userId=UZyMgwSApiN0b148VDrZSAeWkfb2';
    final response = await http.get(url);
    final body = json.decode(response.body);

    return body.map<User>(User.fromJson).toList();
  }

  static Future<List<User>> getUsersLocally(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/users.json');
    final body = json.decode(data);

    return body.map<User>(User.fromJson).toList();
  }
}
