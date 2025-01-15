


import 'package:get/get.dart';

class LoginController    extends   GetxController{

RxBool remember =   false.obs;


void changeCheckbox ( bool value) {
        print(value);
    remember.value = value;
    print('remember value ${remember.value}');

}




}