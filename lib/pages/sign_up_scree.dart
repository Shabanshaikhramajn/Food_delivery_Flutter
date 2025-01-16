import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';
import 'package:food_delivery/controller/login_controller.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {
  bool remember = false;
  final _formKey = GlobalKey<FormState>();
  

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,


      body:  Obx(()=>  SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(color: secondaryShade),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * .15,
                    ),
                    Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 25,
                        color: whiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Please sign in to your existing account',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0, // Adjust top position for form
                child: Container(
                  width: width * 1,
                  height: height * .7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Form(

                          key : _formKey,
                      child: Column(
                        children: [
                          // Email field
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'EMAIL',
                             
                            ),
                          ),
                          
                          TextFormField(
                              controller: loginController.emailContoller.value,
                            decoration: InputDecoration(
                              fillColor: const Color.fromARGB(255, 233, 233, 233)
                                  .withOpacity(.7),
                              filled: true,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 20.0,
                                horizontal: 10.0,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(17),
                                borderSide: BorderSide.none,
                              ),
                            ),

                          // validator : (value) {

                          //     if(value == null || value.isEmpty){

                          //           return 'Please enter your  email';

                          //     }
                          //     final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                          //     if(!emailRegex.hasMatch(value)){

                          //       return 'Please ente a valid email';
                          //     }
                          //     return null;

                          // },
                          // keyboardType: TextInputType.emailAddress,


                          ), 
                          
                          SizedBox(height: 20),
                          // Password field
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'PASSWORD',
                             
                            ),
                          ),
                         
                         TextFormField(
                            controller: loginController.passwordController.value,
                            obscureText: loginController.obscuretextPassword.value, // Make password field obscure
                            decoration: InputDecoration(
                              fillColor: const Color.fromARGB(255, 233, 233, 233)
                                  .withOpacity(.7),
                              filled: true,
                              
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 20.0,
                                horizontal: 10.0,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(17),
                                borderSide: BorderSide.none,
                              ),
        
                              
        
                              suffixIcon: IconButton( onPressed: (){
                                      loginController.changePasswordVisiblity();
        
                              },
                                
                                icon: Icon(loginController.obscuretextPassword.value 
                                  ? Icons.visibility_off 
                                  : Icons.visibility
                              ) )      
        
        
        
                            ),
                          ),
                         
                          SizedBox(height: 20),
                          // Remember me and forgot password
                          Row(
                            children: [
                            
                                Checkbox(
                                  value: loginController.remember.value,
                                  onChanged: (value) {
                                    print('checkbox value $value');
                                    loginController.changeCheckbox(value!);
                                  },
                                  side: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                ),
                              
                              Text(
                                'Remember me',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                              Spacer(),
                              Text(
                                'Forgot Password',
                                style:
                                    TextStyle(fontSize: 18, color: primaryShade),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          // Log In button
                          InkWell(
                            onTap: () {

                            
                               loginController.loginApi();  
                                            print('login button pressed'); 
                              
                             
       
        
                            },
                            child: Container(
                              height: width * 0.14,
                              width: width * 0.9,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: primaryShade,
                              ),
                              child: Center(
                                child: Text(
                                  'Log In',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),   
        
                          
        
        
                          SizedBox(height: height * .033),
                          // Don't have an account? Sign up
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                width: width * .02,
                              ),
                              GestureDetector(
                                onTap: (){

                                    


                                },
                                child: Text(
                                  'SIGN UP',
                                  style:
                                      TextStyle(fontSize: 16, color: primaryShade),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          // Or text
                          Text(
                            'Or',
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                          SizedBox(height: 20),
                          // Social media icons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: height * .08,
                                width: height * .08,
                                decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    
                                    borderRadius: BorderRadius.circular(40)),
                                    child:  Icon(Icons.facebook, color: Colors.white, size: 30,),
                              ),
        
                            SizedBox(width: width * 0.06,),
        
        
                              Container(
                                height: height * .08,
                                width: height * .08,
                                decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(40)),
                                    child: Icon(FontAwesomeIcons.twitter, color: Colors.white, size: 30,),
                              ),
        
                                SizedBox(width: width * 0.06,),
                              Container(
                                height: height * .08,
                                width: height * .08,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(.8),
                                    borderRadius: BorderRadius.circular(40)),
                                    child: Icon(Icons.apple, color: Colors.white, size: 30,),
                              ),
                             
                             
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ), )      
    );
  }
}
