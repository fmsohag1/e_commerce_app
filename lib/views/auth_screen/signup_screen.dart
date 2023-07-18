import 'package:e_commerce_app/const/consts.dart';
import 'package:e_commerce_app/const/lists.dart';
import 'package:e_commerce_app/widgets/applogo_widget.dart';
import 'package:e_commerce_app/widgets/bg_widget.dart';
import 'package:e_commerce_app/widgets/custom_button.dart';
import 'package:e_commerce_app/widgets/custom_textfields.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override

  bool isCheck=false;

  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(
              children: [
                (context.screenHeight*0.1).heightBox,
                applogoWidget(),
                10.heightBox,
                "Join the $appname".text.white.fontFamily(bold).size(18).make(),
                15.heightBox,
                Column(
                  children: [
                    customTextFields(title: name,hint: nameHint),
                    10.heightBox,
                    customTextFields(title: email,hint: emailHint),
                    10.heightBox,
                    customTextFields(title: password,hint: passwordHint),
                    10.heightBox,
                    customTextFields(title: confirmPassword,hint: confirmPasswordHint),
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(onPressed: (){}, child: forgetPassword.text.make())),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: redColor,
                          checkColor: whiteColor,
                            value: isCheck, onChanged: (newValue){
                            setState(() {
                              isCheck=newValue!;
                            });
                        }),
                        Expanded(
                          child: RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'I agree to the ',
                                style: TextStyle(fontFamily: regular,color: fontGrey)
                              ),
                              TextSpan(
                                  text: termsandCondition,
                                  style: TextStyle(fontFamily: regular,color: redColor)
                              ),
                              TextSpan(
                                  text: ' & ',
                                  style: TextStyle(fontFamily: regular,color: redColor)
                              ),
                              TextSpan(
                                  text: privacyPolicy,
                                  style: TextStyle(fontFamily: regular,color: redColor)
                              )
                            ]
                          )),
                        )
                      ],
                    ),
                    customButton(onPress: (){},color: redColor,textColor: whiteColor,title: signup).box.width(context.screenWidth-50).make(),
                    10.heightBox,
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(text: alreadyAccount,style: TextStyle(fontFamily: bold,color: fontGrey)),
                        TextSpan(text: login,style: TextStyle(fontFamily: bold,color: redColor)),
                      ]
                    )).onTap(() {Get.back();})
                  ],
                ).box.rounded.padding(EdgeInsets.all(16)).white.width(context.screenWidth-50).shadowSm.make()
              ],
            ),
          ),
        )
    );
  }
}
