


import 'package:flutter/widgets.dart';
import 'package:food_delivery/data/home/user_model.dart';
import 'package:food_delivery/data/network/base_api_services.dart';
import 'package:food_delivery/repository/home_repository/login_repository.dart';
import 'package:food_delivery/res/routes/routes_name.dart';
import 'package:get/get.dart';

class LoginController    extends   GetxController{
  final _apiServices  = LoginRepository();

RxBool remember =   false.obs;
RxBool obscuretextPassword = true.obs;

  final emailContoller = TextEditingController().obs;

  final passwordController = TextEditingController().obs;

RxBool loading = false.obs;



void changeCheckbox ( bool value) {
        print(value);
    remember.value = value;
    print('remember value ${remember.value}');

}

void changePasswordVisiblity ( ) {


  obscuretextPassword.value = !obscuretextPassword.value;
       

}


// login page handling -----------------------------------------------------------------------------------------------


void loginApi (){

loading.value = true;

  Map data = {

    'email' : emailContoller.value.text,
    'password' : passwordController.value.text

  };

    print(data);

_apiServices.loginApi(data).then((value){

    loading.value = false;

        print('value is the $value');

        UserModel userModel  = UserModel( 
          token: value['token']

        );

  print(userModel.token);

      if(userModel.token == 'QpwL5tke4Pnpja7X4') {

    Get.toNamed(RoutesName.homeView);

      }


});




}




}