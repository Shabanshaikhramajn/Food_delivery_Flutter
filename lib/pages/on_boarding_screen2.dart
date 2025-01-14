

import 'package:flutter/material.dart';
import 'package:food_delivery/controller/welcome_controller.dart';
import 'package:get/get.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnBoardingScreen2 extends StatefulWidget {
  const OnBoardingScreen2({super.key});

  @override
  State<OnBoardingScreen2> createState() => _OnBoardingScreen2State();
}

class _OnBoardingScreen2State extends State<OnBoardingScreen2> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WelcomeController());
    return  Scaffold(
      appBar: AppBar(
        title: Text('shaban here'),
        centerTitle: true,
      ),

      body: Obx(()=> SizedBox(
        width: 360,
        height: 780,
        child: Stack( 
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              scrollDirection: Axis.horizontal,
              reverse: false,
              onPageChanged: (index){
                controller.changePage(index);
              },
              controller: PageController(
                initialPage: 0, keepPage: true, viewportFraction: 1 
              ),
              pageSnapping: true,
              physics: ClampingScrollPhysics(),
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/intro1.png') ,
                      fit: BoxFit.contain,

                    )
                  ),

                   child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned(
                        child: ElevatedButton(onPressed: (){}, 
                        style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                              foregroundColor: MaterialStateProperty.all(Colors.black),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )),
                              side: MaterialStateProperty.all(
                                BorderSide(color: Colors.white)

                              )
                             ),
                        child: Text('Login')))
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/logo.png') ,
                      fit: BoxFit.contain,
                      
                    )
                  ),
                   child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned(
                        child: ElevatedButton(onPressed: (){}, 
                        style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                              foregroundColor: MaterialStateProperty.all(Colors.black),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )),
                              side: MaterialStateProperty.all(
                                BorderSide(color: Colors.white)

                              )
                             ),
                        child: Text('Login')))
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/intro3.png') ,
                      fit: BoxFit.contain,
                      
                    )
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned(
                        child: ElevatedButton(onPressed: (){}, 
                        style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                              foregroundColor: MaterialStateProperty.all(Colors.black),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )),
                              side: MaterialStateProperty.all(
                                BorderSide(color: Colors.white)

                              )
                             ),
                        child: Text('Login')))
                    ],
                  ),
                )
              ],
            ),
            Positioned (
              bottom: 70,
              child: DotsIndicator(dotsCount: 3,
              
                position: controller.state.index.value.toDouble(),
                reversed: false,
                mainAxisAlignment: MainAxisAlignment.center,
                decorator: DotsDecorator(
                  size: Size.square(9),
                  // activeSize: Size(18,9),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)

                  )
                ),
              ),
            )

          ],
        ),
      ),)

    );
  }
}