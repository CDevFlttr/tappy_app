
import 'package:flutter/cupertino.dart';
import 'package:tappy_app/service/constants_api/constants.api.dart';
import 'package:http/http.dart' as http;
import '../../model/api_response.dart';

class GetDataAccount extends ChangeNotifier{
   ApiResponse? apiResponse;

  Future<ApiResponse> getDataUser(String emailContr) async{
    ApiResponse apiResponse = ApiResponse();

    try {
      final response = await http.get(
        Uri.parse(readDataAccount),
      
      );


switch (response.statusCode) {
  case 200:
    apiResponse.message = 'Richiesta eseguita con successo con successo';
    break;
  case 401:
    apiResponse.message = 'Il front end o l\'utente non sono autenticati';
    break;
  case 403:
    apiResponse.message = 'Utente non abilitato alla lettura dell\'account';
    break;
  default:
}

      
    } catch (e) {
    }
    return apiResponse;
  }
}