import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:tappy_app/service/constants_api/constants.api.dart';
import '../../model/api_response.dart';

class ResetPassword extends ChangeNotifier{
   ApiResponse? apiResponse;

  Future<ApiResponse> resetPasswordUser(String emailContr) async{
    ApiResponse apiResponse = ApiResponse();

    try {
      final response = await http.put(
        Uri.parse('$resetPassword/$emailContr'),
        headers: {'Accept': 'application/json'},
        body: {
          "sendEmail": "IT",
        }
      );


switch (response.statusCode) {
  case 200:
    apiResponse.message = 'Password resettata con successo';
    break;
  case 401:
    apiResponse.message = 'Il front end non è autenticato';
    break;
  case 403:
    apiResponse.message = 'Reset fallito: utente non autorizzato';
    break;
  case 404:
    apiResponse.message = 'La password attuale non è riconosciuta (password errata)';
    break;
  default:
}

      
    } catch (e) {
    }
    return apiResponse;
  }
}