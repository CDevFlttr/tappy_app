import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import '../../constants_api/constants.api.dart';
import '../../model/api_response.dart';


class RequestNewKeyApi extends ChangeNotifier {
   ApiResponse? apiResponse;
   Future<ApiResponse> activeKeyUser(String emailContr) async{
    ApiResponse apiResponse = ApiResponse();
    try{
      final response = await http.put(
        Uri.parse('$newUsersKeyNew/$emailContr'),
        headers: {'Accept': 'application/json'},
        body: {
          'sendEmail': 'IT',
        }
      );


        switch (response.statusCode) {
          case 200:
            apiResponse.message = 'Chiave di attivazione rigenerata correttamente';
            break;
          case 401:
          final errors = jsonDecode(response.body)['warErr'];
          apiResponse.error = 'Il front end non è autenticato';
            break;
          case 403:
             final errors = jsonDecode(response.body)['warErr'];
          apiResponse.error = 'Rigenerazione fallita: l\'utente è già attivato';
            break;
          case 404:
             final errors = jsonDecode(response.body)['warErr'];
          apiResponse.error = 'Rigenerazione fallita: l\'email passata non esiste';
            break;
          default:
        }
    } catch(e) {
      apiResponse.error = '$e';
    }
    return apiResponse;
  }
}
