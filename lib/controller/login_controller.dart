


import 'dart:convert';

import 'package:flutter/material.dart';
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

    'username' : emailContoller.value.text,
    'password' : passwordController.value.text

  };

 

    print(data);

_apiServices.loginApi(data).then((value){

    loading.value = false;

        print('value is the $value');

       


    if( value !=null && value['access_token'] != null){

       UserModel userModel  = UserModel( 
          accessToken: value['access_token'],
          refreshToken: value['refresh_token'],
          message: value['message']

        );


        print('Access token ${userModel.accessToken}');

          Get.toNamed(RoutesName.homeView);

    }else{

      Get.snackbar('Error', 'Invalid credentials', snackPosition:SnackPosition.TOP, 
        backgroundColor: Colors.white,
        colorText: Colors.black,
        margin: EdgeInsets.only(top: 20, left: 10, right: 10)
      
      );
    }





}).catchError((error) {

  loading.value  = false;

  print('Erro during login $error');


  Get.snackbar('Error', 'Something went wrong.Please try again');



});




}




}