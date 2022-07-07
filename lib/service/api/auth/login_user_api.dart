import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:tappy_app/service/model/api_response.dart';
import 'package:http/http.dart' as http;
import '../../constants_api/constants.api.dart';

class LoginUserApi extends ChangeNotifier {
  ApiResponse? apiResponse;

  Future<ApiResponse> loginUser(String emailContr, String passwordContr) async{
    ApiResponse apiResponse = ApiResponse();

    try{
      final response = await http.post(
        Uri.parse(login),
        headers: {'Accept': 'application/json'},
        body: {
          'userEmail': emailContr,
          'password': passwordContr,
        }
      );

      switch (response.statusCode) {
        case 201:
          apiResponse.message = 'Login correttamente eseguito';
          break;
        case 401:
          final errors = jsonDecode(response.body)['warErr'];
          apiResponse.error = 'Il front end non è autenticato';
            break;
        case 403:
          final errors = jsonDecode(response.body)['warErr'];
          apiResponse.error = 'Login fallito: utente non autorizzato';
            break;
        case 404:
          final errors = jsonDecode(response.body)['warErr'];
          apiResponse.error = 'Login fallito: l\'email non è registrata';
            break;
        default:
      }
    } catch(e) {
      apiResponse.error = '$e';
    }
     return apiResponse;
  }
}
