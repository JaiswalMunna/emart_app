import 'package:eecm/consts/consts.dart';
import 'package:eecm/views/controllers/auth_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/background_widget.dart';
import '../../widgets_common/custom_button.dart';
import '../../widgets_common/custom_textfield.dart';
import '../Home_screen/home.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  var controller = Get.put(AuthController());

  //text controller
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordRetypeController = TextEditingController();

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
                  "Signup to ${appname}",
                  style: TextStyle(color: Colors.white),
                ),
                15.heightBox,
                Column(
                  children: [
                    customTextField(
                        title: name,
                        hint: nameHint,
                        controller: nameController,isPass: false),
                    10.heightBox,
                    customTextField(
                        title: email,
                        hint: emailHint,
                        controller: emailController,isPass: false),
                    10.heightBox,
                    customTextField(
                        title: password,
                        hint: passwordHint,
                        controller: passwordController,isPass: true),
                    10.heightBox,
                    customTextField(
                        title: confirmPassword,
                        hint: confirmPasswordHint,
                        controller: passwordRetypeController,isPass: true),
                    10.heightBox,
                    Row(
                      children: [
                        Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.red,
                            value: isCheck,
                            onChanged: (newValue) {
                              setState(() {
                                isCheck = newValue;
                              });
                            }),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "I agree to the ",
                                  style: TextStyle(
                                    fontFamily: bold,
                                    color: Colors.grey,
                                  ),
                                ),
                                TextSpan(
                                  text: termsAndCondition,
                                  style: TextStyle(
                                    fontFamily: bold,
                                    color: Colors.red,
                                  ),
                                ),
                                TextSpan(
                                  text: " & ",
                                  style: TextStyle(
                                    fontFamily: bold,
                                    color: Colors.grey,
                                  ),
                                ),
                                TextSpan(
                                  text: privacyPolicy,
                                  style: TextStyle(
                                    fontFamily: bold,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    10.heightBox,
                    Container(
                        width: context.screenWidth,
                        child: customButton(
                            title: singup,
                            color: isCheck == true ? Colors.red : Colors.grey,
                            textcolor: Colors.white,
                            onPress: () async {
                              if (isCheck != false) {
                                try {
                                  await controller
                                      .signupMethod(
                                          context: context,
                                          email: emailController.text,
                                          password: passwordController.text)
                                      .then((value) {
                                    return controller.storeUserData(
                                      email: emailController.text,
                                      password: passwordController.text,
                                      name: nameController.text
                                    );
                                  }).then((value){
                                    VxToast.show(context, msg: loggedIn);
                                    Get.offAll(()=> Home());
                                  });
                                } catch (e) {
                                  auth.signOut();
                                  VxToast.show(context, msg: e.toString());
                                }
                              }
                            })),
                    10.heightBox,
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            alreadyHaveAnAccount,
                            style: TextStyle(
                              fontFamily: bold,
                              color: Colors.grey,
                            ),
                          ),
                          4.widthBox,
                          Text(
                            login,
                            style: TextStyle(
                              fontFamily: bold,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
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
