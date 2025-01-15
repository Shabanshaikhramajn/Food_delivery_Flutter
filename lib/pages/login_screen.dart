import 'package:flutter/material.dart';
import 'package:food_delivery/controller/login_controller.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
    bool  remember = false;

  @override
  Widget build(BuildContext context) {
    final  LoginController loginController  = Get.put(LoginController());

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(


        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
           
            decoration: BoxDecoration(
              color: secondaryShade,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Log In',
                  style: TextStyle(
                      fontSize: 25,
                      color: whiteColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Please sign in to your existing account',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: whiteColor),
                ),
              ],
            ),
          ),

          Positioned(
                top: 50,

            child: Container(
          decoration: BoxDecoration(
            color: Colors.red ,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
            )
          ),
          child: Form(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Text(
                      'EMAIL',
                      style: TextStyle(),
                    ),
                    TextFormField(
                      
                      decoration: InputDecoration(
                          fillColor: const Color.fromARGB(255, 233, 233, 233)
                              .withOpacity(.7),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 10.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17),
                              borderSide: BorderSide.none)),
                    ),
                    Text(
                      'PASSWORD',
                      style: TextStyle(),
                    ),
          
                    TextFormField(
                      
                      decoration: InputDecoration(
                          fillColor: const Color.fromARGB(255, 233, 233, 233)
                              .withOpacity(.7),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 10.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17),
                              borderSide: BorderSide.none)),
                    ),
          
          
          
          
          
          
                    Row(
                      children: [
                       Obx(()=> Checkbox(
                          value: loginController.remember.value,
                          onChanged: ( value) {
                                          print('checkbox value $value');
                                     loginController.changeCheckbox(value!);
                          },
                          side: BorderSide(
                            color: Colors.grey, // Change border color
                            width: 2.0, // Change border width
                          ),
                        ), ),
          
                        Text('Remember me', style: TextStyle(fontSize: 15, color: Colors.grey)  ),
          
                             Text('Forgot Password', style: TextStyle(fontSize: 18,color: primaryShade ),)
          
                        
                      ],
                    ),
          
                    
                      InkWell(
          
                        onTap: (){
          
                              
          
                        },
          
                        child: Container(
                          height: width * .14,
                          width: width * .9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primaryShade,
                          ),
                          child: Center(
                            child: 
                            Text(
                              'Log In',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )
                        
                        
                          ),
                        ),
                      ),
          
          
                      Row(
                        children: [
                          Text("Don't have an account?", style: TextStyle(fontSize: 15),),
                          Text('SIGN UP', style: TextStyle( fontSize: 15, color: primaryShade),)
                        ],
                      ),
          
                      Text('Or', style: TextStyle(fontSize: 20, color: Colors.grey),)
          ,
                       Row(
                        children: [
                          Icon(Icons.facebook),
                          Icon(Icons.apple),
                          Icon(Icons.apple)
          
          
                        ],
                       )
          
          
                  ],
                ),
              )
            ],
          )),
        )
            
            )






          ],
        )

          
        );
  }
}








//  Container(
//           decoration: BoxDecoration(
//             color: Colors.red ,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(20),
//               topRight: Radius.circular(20)
//             )
//           ),
//           child: Form(
//               child: Column(
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(left: 20, right: 20),
//                 child: Column(
//                   children: [
//                     Text(
//                       'EMAIL',
//                       style: TextStyle(),
//                     ),
//                     TextFormField(
                      
//                       decoration: InputDecoration(
//                           fillColor: const Color.fromARGB(255, 233, 233, 233)
//                               .withOpacity(.7),
//                           filled: true,
//                           contentPadding: EdgeInsets.symmetric(
//                               vertical: 20.0, horizontal: 10.0),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(17),
//                               borderSide: BorderSide.none)),
//                     ),
//                     Text(
//                       'PASSWORD',
//                       style: TextStyle(),
//                     ),
          
//                     TextFormField(
                      
//                       decoration: InputDecoration(
//                           fillColor: const Color.fromARGB(255, 233, 233, 233)
//                               .withOpacity(.7),
//                           filled: true,
//                           contentPadding: EdgeInsets.symmetric(
//                               vertical: 20.0, horizontal: 10.0),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(17),
//                               borderSide: BorderSide.none)),
//                     ),
          
          
          
          
          
          
//                     Row(
//                       children: [
//                        Obx(()=> Checkbox(
//                           value: loginController.remember.value,
//                           onChanged: ( value) {
//                                           print('checkbox value $value');
//                                      loginController.changeCheckbox(value!);
//                           },
//                           side: BorderSide(
//                             color: Colors.grey, // Change border color
//                             width: 2.0, // Change border width
//                           ),
//                         ), ),
          
//                         Text('Remember me', style: TextStyle(fontSize: 15, color: Colors.grey)  ),
          
//                              Text('Forgot Password', style: TextStyle(fontSize: 18,color: primaryShade ),)
          
                        
//                       ],
//                     ),
          
                    
//                       InkWell(
          
//                         onTap: (){
          
                              
          
//                         },
          
//                         child: Container(
//                           height: width * .14,
//                           width: width * .9,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: primaryShade,
//                           ),
//                           child: Center(
//                             child: 
//                             Text(
//                               'Log In',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18),
//                             )
                        
                        
//                           ),
//                         ),
//                       ),
          
          
//                       Row(
//                         children: [
//                           Text("Don't have an account?", style: TextStyle(fontSize: 15),),
//                           Text('SIGN UP', style: TextStyle( fontSize: 15, color: primaryShade),)
//                         ],
//                       ),
          
//                       Text('Or', style: TextStyle(fontSize: 20, color: Colors.grey),)
//           ,
//                        Row(
//                         children: [
//                           Icon(Icons.facebook),
//                           Icon(Icons.apple),
//                           Icon(Icons.apple)
          
          
//                         ],
//                        )
          
          
//                   ],
//                 ),
//               )
//             ],
//           )),
//         )
