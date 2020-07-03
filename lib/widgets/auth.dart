import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier{
  String _token;
  DateTime _expiryDate;
  String _userId;
 //Future<void> _authenticate(String email, String password , String urlSegment) async {



  Future<void> signup(String email, String password , )async{
    final url = 'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyD-_PXf_9HpQgf_GFIO0JjLiWVjL-lGuUM';
    final response = await http.post(
        url,
        body: jsonEncode(
          {
            'email': email,
            'password': password,
            'returnSecureToken': true,
          },
        ),
      );
  }

  Future<void> login(String email, String password) async{
    final url = 'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyD-_PXf_9HpQgf_GFIO0JjLiWVjL-lGuUM';

      final response = await http.post(
        url,
        body: jsonEncode(
          {
            'email': email,
            'password': password,
            'returnSecureToken': true,
          },
        ),
      );


  }
}

