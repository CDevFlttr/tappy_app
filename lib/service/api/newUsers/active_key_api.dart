import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../../constants_api/constants.api.dart';
import '../../model/api_response.dart';


class ActiveKeyApi extends ChangeNotifier {
   ApiResponse? apiResponse;
   Future<ApiResponse> activeKeyUser(int codeKey) async{
    ApiResponse apiResponse = ApiResponse();
    try{
      final response = await http.patch(
        Uri.parse('$newUsersKeyAct/$codeKey'),
        headers: {'Accept': 'application/json'},
        body: {
          'sendEmail': 'IT',
        }
      );


        switch (response.statusCode) {
          case 201:
            apiResponse.message = 'Attivazione dell\'utente eseguita correttamente';
            break;
          case 401:
          final errors = jsonDecode(response.body)['warErr'];
          apiResponse.error = 'Il front end non è autenticato';
            break;
          case 403:
             final errors = jsonDecode(response.body)['warErr'];
          apiResponse.error = 'Attivazione fallita: la chiave è scaduta. Richiederne una nuova con il servizio regenKey';
            break;
          case 404:
             final errors = jsonDecode(response.body)['warErr'];
          apiResponse.error = 'Attivazione fallita: la chiave fornita non esiste';
            break;
          default:
        }
    } catch(e) {
      apiResponse.error = '$e';
    }
    return apiResponse;
  }
}
