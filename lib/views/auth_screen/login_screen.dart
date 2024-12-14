import 'package:eecm/consts/consts.dart';
import 'package:eecm/consts/lists.dart';
import 'package:eecm/views/auth_screen/signup_screen.dart';
import 'package:eecm/widgets_common/applogo_widget.dart';
import 'package:eecm/widgets_common/background_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../widgets_common/custom_button.dart';
import '../../widgets_common/custom_textfield.dart';
import 'forgetPassword_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return backGround(
        child: SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                (context.screenHeight * 0.1).heightBox,
                //making responsive using velocity x
                appLogoWidget(),
                15.heightBox,
                Text(
                  "Log in to ${appname}",
                  style: TextStyle(color: Colors.white),
                ),
                15.heightBox,
                Column(
                  children: [
                    customTextField(title: email, hint: emailHint),
                    10.heightBox,
                    customTextField(title: password, hint: passwordHint),
                    10.heightBox,
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              Get.to(()=>ForgetPasswordScreen());
                            }, child: Text(forgetPassword))),
                    10.heightBox,
                    Container(
                        width: context.screenWidth,
                        child: customButton(
                            title: login,
                            color: Colors.red,
                            textcolor: Colors.white,
                            onPress: () {})),
                    10.heightBox,
                    Text(
                      createnewaccount,
                      style: TextStyle(color: Colors.grey),
                    ),
                    10.heightBox,
                    Container(
                        width: context.screenWidth,
                        child: customButton(
                            title: singup,
                            color: Colors.red,
                            textcolor: Colors.white,
                            onPress: () {
                              Get.to(()=>SignupScreen());
                            })),
                    10.heightBox,
                    Text(loginwith),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          3,
                          (index) => CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 25,
                                child: Image.asset(
                                  socialIconList[index],
                                  width: 30,
                                ),
                              )),
                    ),
                  ],
                )
                    .box
                    .white
                    .rounded
                    .padding(EdgeInsets.all(16))
                    .shadowSm
                    .width(context.screenWidth - 50)
                    .make(),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
