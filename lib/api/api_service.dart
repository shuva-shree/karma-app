// import 'package:http/http.dart' as http;
// import 'package:karma/models/login-response-model.dart';
// import 'dart:convert';


// class APIService {
//   Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
//     String url = "https://reqres.in/api/login";

//     final response = await http.post(Uri.parse(url), body: requestModel.toJson());
//     if (response.statusCode == 200 || response.statusCode == 400) {
//       return LoginResponseModel.fromJson(
//         json.decode(response.body),
//       );
//     } else {
//       throw Exception('Failed to load data!');
//     }
//   }
// }

import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiServices{

  Future <LoginApiResponse> apiCallLogin(Map<String,dynamic> param) async{
    
    var url = Uri.parse('https://reqres.in/api/login');
    var response = await http.post(url, body: param);
   
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
   
    final data = jsonDecode(response.body);
    return LoginApiResponse(token: data["token"], error: data["error"]);
  }
}


class LoginApiResponse{
  final String? token;
  final String? error;

  LoginApiResponse({this.token,this.error});

}
