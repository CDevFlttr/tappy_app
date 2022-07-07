import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:tappy_app/service/constants_api/constants.api.dart';
import 'package:tappy_app/service/model/new_user.dart';
import '../../model/api_response.dart';

class RegisterUserApi extends ChangeNotifier {
    ApiResponse? apiResponse;

  Future<ApiResponse> registerNewUser(String userEmailContr, String nickNameContr, bool checkEmail) async{
    ApiResponse apiResponse = ApiResponse();
    try{
      final response = await http.post(
        Uri.parse(newUsers),
        headers: {'Accept': 'application/json'},
        body: {
          'userEmail': userEmailContr,
          'nickName': nickNameContr,
          'checkEmail': checkEmail,
          'sendEmail': 'IT',
        }
      );

        switch (response.statusCode) {
          case 201:
            apiResponse.data = NewUserModel.fromJson(jsonDecode(response.body));
            apiResponse.message = 'Il nuovo utente è stato creato correttamente';
            break;
          case 400:
            final errors = jsonDecode(response.body)['warErr'];
          apiResponse.error = 'Errore nei parametri passati';
            break;
          case 401:
            final errors = jsonDecode(response.body)['warErr'];
          apiResponse.error = 'Il front end non è autenticato';
            break;
          case 409:
             final errors = jsonDecode(response.body)['warErr'];
          apiResponse.error = 'Creazione utente fallita: email già utilizzata';
            break;
          default:
        }
    } catch(e) {
      apiResponse.error = '$e';
    }
    return apiResponse;
  }
}
