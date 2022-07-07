import 'package:flutter/cupertino.dart';
import 'package:tappy_app/service/constants_api/constants.api.dart';
import 'package:http/http.dart' as http;
import '../../model/api_response.dart';

class UpdateDataAccount extends ChangeNotifier{
   ApiResponse? apiResponse;

  Future<ApiResponse> rupdateDataUser(String emailContr) async{
    ApiResponse apiResponse = ApiResponse();

    try {
      final response = await http.patch(
        Uri.parse(saveDataAccount),
      
      );


switch (response.statusCode) {
  case 204:
    apiResponse.message = 'Account utente aggiornato con successo';
    break;
  case 400:
    apiResponse.message = 'Errori nei parametri ';
    break;
  case 401:
    apiResponse.message = 'Il front end o l\'utente non sono autenticati';
    break;
  case 403:
    apiResponse.message = 'Utente non abilitato all\'aggiornamento dell\'account';
    break;
  default:
}

      
    } catch (e) {
    }
    return apiResponse;
  }
}