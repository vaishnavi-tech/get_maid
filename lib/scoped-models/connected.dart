import 'package:flutter/foundation.dart';
import 'package:scoped_model/scoped_model.dart';
import '../model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ConnectedModel extends Model {

static  User authenticatedUser;



 }
class UserModel extends ConnectedModel {
  User authenticatedUser;

  User get user {
    return  authenticatedUser;
  }

  User get token {
    return authenticatedUser;
  }

  Future<Map<String,dynamic>> login(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
      'returnSecureToken': true,
    };
    final http.Response response = await http.post(
      'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyD-_PXf_9HpQgf_GFIO0JjLiWVjL-lGuUM',
      body: json.encode(authData),
      headers: {'Content-Type': 'application/json'},
    );
    print(
        "===============================================hefrvnjvnfvhfvbsdjvjdnl==================================");
    final Map<String, dynamic> responseData = json.decode(response.body);
    print(responseData);
    bool hasError = true;
    String message = 'Something went wrong';
    if (responseData.containsKey('idToken')) {
      print(responseData);
      hasError = false;
      message = 'Authentication succeeded!';
      authenticatedUser = User(
          id: responseData['localId'],
          email: email,
          token: responseData['idToken']);
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', responseData['idToken']);
      prefs.setString('userEmail', email);
      prefs.setString('userId', responseData['localId']);
    } else if (responseData['error']['message'] == 'EMAIL_EXISTS') {
      message = 'This email already exists.';
    } else if (responseData['error']['message'] == 'EMAIL_NOT_FOUND') {
      message = 'This email is not found.';
    } else if (responseData['error']['message'] == 'INVALID_PASSWORD') {
      message = 'The password is invalid.';
    }
    notifyListeners();
    return {'success': !hasError, 'message': message};
  }

  void autoAuthenticate() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('token');
    if (token != null) {
      final String userEmail = prefs.getString('userEmail');
      final String userId = prefs.getString('userId');
      ConnectedModel.authenticatedUser = User(id: userId, email: userEmail, token: token);
      notifyListeners();
    }
  }

  Future<Map<String, dynamic>> signUp(String email, String password) async {


    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
      'returnSecureToken': true,
    };


    final http.Response response = await http.post(
      'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyD-_PXf_9HpQgf_GFIO0JjLiWVjL-lGuUM',
      body: json.encode(authData),
      headers: {'Content-Type': 'application/json'},
    );
    print(
        "===============================================hefrvnjvnfvhfvbsdjvjdnl==================================");
    final Map<String, dynamic> responseData = json.decode(response.body);
    print(responseData);
    bool hasError = true;
    String message = 'Something went wrong';
    if (responseData.containsKey('idToken')) {
      print(responseData);
      hasError = false;
      message = 'Authentication succeeded!';
    } else if (responseData['error']['message'] == 'EMAIL_EXISTS') {
      message = 'This email already exists.';
    } else if (responseData['error']['message'] == 'EMAIL_NOT_FOUND') {
      message = 'This email is not found.';
    } else if (responseData['error']['message'] == 'INVALID_PASSWORD') {
      message = 'The password is invalid.';
    }
    notifyListeners();
    return {'success': !hasError, 'message': message};
  }

  void logout() async {
    authenticatedUser = null;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('token');
    prefs.remove('userId');
    prefs.remove('userEmail');
  }
}
class MaidModel extends ConnectedModel{

  void register( String name,
  String address,
  String age,
  String gender,
  String phoneNumber,
  String password) async{
    List ans=[];
    final response = await http.post('https://get-maid-app.firebaseio.com/maids.json',
     body: jsonEncode(
       {
         'name':name ,
         'address': address,
         'age':age.toString(),
         'gender':gender,
         'phoneNumber':phoneNumber.toString(),
         'password' : password ,
         'categories':ans,
         'userEmail':  ConnectedModel.authenticatedUser.email,
         'userId':   ConnectedModel.authenticatedUser.id

       },
     ),
   );
    print(json.decode(response.body));

  }

}
class CustomerModel extends  ConnectedModel {
  void registered(String name,
      String address,
      String email,
      String phoneNumber,) async {
    final response = await http.post(
      'https://get-maid-app.firebaseio.com/custmer.json',
      body: jsonEncode(
        {
          'name': name,
          'address': address,
          'email': email,
          'phoneNumber': phoneNumber.toString(),
          'userEmail':   ConnectedModel.authenticatedUser.email,
          'userId':  ConnectedModel.authenticatedUser.id
        },
      ),
    );
    print(json.decode(response.body));
  }

  void getCustomer() async {
     List finalData = [];
    var response = await http.get(
        'https://get-maid-app.firebaseio.com/custmer.json');
    var res = json.decode(response.body);
    var maidList = res;

    maidList.forEach((key, value) {
    //  print("hi"+value['email']
      print(ConnectedModel.authenticatedUser.email);

      value.forEach((innerkey, innervalue)  {
        if(innerkey=='email') {
          print(innervalue);
          if (ConnectedModel.authenticatedUser.email == innervalue) {
            finalData.add(value);
          }
        }
      });
    });
    print("=================================here");

    print
    (
    finalData
    );
  }
    }