import 'package:eecm/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity_x/src/extensions/num_ext.dart';
import '../../widgets_common/applogo_widget.dart';
import '../auth_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  //creating a method to change screen
  changeScreen(){
    Future.delayed(Duration(seconds: 3),(){
      //using getx method
      Get.to(()=>LoginScreen);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    changeScreen();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              ),
            ),
            40.heightBox,
            appLogoWidget(),
            20.heightBox,//sizedbox
            Text(
              "E-Mart",
              style: TextStyle(
                  fontFamily: bold, fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 5,),
            appversion.text.white.fontFamily(semibold).make(),
            Spacer(),
            credits.text.white.fontFamily(semibold).make(),
          ],
        ),
      ),
    );
  }
}
