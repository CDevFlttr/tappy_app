
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tappy_app/service/model/api_response.dart';
import 'package:http/http.dart' as http;

import '../../constants_api/constants.api.dart';

class ChangePassword extends ChangeNotifier {
  ApiResponse? apiResponse;

  Future<ApiResponse> changePassword(String oldPasswordContr, String newPasswordContr) async{
    ApiResponse apiResponse = ApiResponse();

    try {
      final response = await http.patch(
        Uri.parse(passwordChange),
        headers: {'Accept': 'application/json'},
        body: {
          "oldPassword": oldPasswordContr,
          "newPassword": newPasswordContr,
        }
      );


switch (response.statusCode) {
  case 204:
    apiResponse.message = 'Password cambiata con successo';
    break;
  case 400:
     final errors = jsonDecode(response.body)['warErr'];
          apiResponse.error = 'Errori nei parametri';
    break;
  case 401:
    apiResponse.message = 'Il front end non è autenticato';
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