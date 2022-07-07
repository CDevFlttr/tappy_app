import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:tappy_app/service/model/api_response.dart';
import 'package:http/http.dart' as http;

import '../../constants_api/constants.api.dart';

class LogoutUserApi extends ChangeNotifier {
  ApiResponse? apiResponse;

  Future<ApiResponse> loginUser(String emailContr, String passwordContr) async{
    ApiResponse apiResponse = ApiResponse();

    try{
      final response = await http.delete(
        Uri.parse(logoutUser),
      );

      switch (response.statusCode) {
        case 204:
          apiResponse.message = 'Logout effettuato correttamente';
          break;
        case 401:
          final errors = jsonDecode(response.body)['warErr'];
          apiResponse.error = 'Il front end non è autenticato';
            break;
        default:
      }
    } catch(e) {
      apiResponse.error = '$e';
    }
     return apiResponse;
  }
}
