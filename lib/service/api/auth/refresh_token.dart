


import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';

import '../../constants_api/constants.api.dart';
import '../../model/api_response.dart';


class RefreshToken extends ChangeNotifier{
   ApiResponse? apiResponse;
   Future<ApiResponse> activeKeyUser(int codeKey) async{
    ApiResponse apiResponse = ApiResponse();
    try{
      final response = await http.post(
        Uri.parse(refreshToken),
       
      );


        switch (response.statusCode) {
          case 201:
            apiResponse.message = 'Refresh correttamente eseguito';
            break;
          case 401:
          final errors = jsonDecode(response.body)['warErr'];
          apiResponse.error = 'Il front end non è autenticato';
            break;
          case 403:
             final errors = jsonDecode(response.body)['warErr'];
          apiResponse.error = 'Login fallito: utente non autorizzato';
            break;
          default:
        }
    } catch(e) {
      apiResponse.error = '$e';
    }
    return apiResponse;
  }
}