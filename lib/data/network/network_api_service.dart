



import 'dart:convert';

import 'package:food_delivery/data/network/base_api_services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class NetworkApiService  extends BaseApiServices{




  @override
  Future postApi(data, String url)async {
  

        dynamic responseJson;


        try {

            final response = await http.post(Uri.parse(url),

            body : data
            ).timeout(const Duration(seconds: 10));
            print('try block successfull');

  responseJson = returnResponse(response);
            
          print(responseJson);
        }catch(e){

          print('inside catch block happened this : $e');
        }



   return responseJson ;
  }
  
 dynamic returnResponse(http.Response response) {

        switch (response.statusCode){

              case 200: 

              dynamic responseJson = jsonDecode(response.body);
              print('200 status code');
              return responseJson;


              case 400: 
             print('status code is 400');

             default : 
              print('error happened while fetching data');

        }



 }


  



}
