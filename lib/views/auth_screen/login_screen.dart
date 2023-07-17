import 'package:e_commerce_app/const/consts.dart';
import 'package:e_commerce_app/const/lists.dart';
import 'package:e_commerce_app/views/auth_screen/signup_screen.dart';
import 'package:e_commerce_app/widgets/applogo_widget.dart';
import 'package:e_commerce_app/widgets/bg_widget.dart';
import 'package:e_commerce_app/widgets/custom_button.dart';
import 'package:e_commerce_app/widgets/custom_textfields.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
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
                "Log in to $appname".text.white.fontFamily(bold).size(18).make(),
                15.heightBox,
                Column(
                  children: [
                    customTextFields(title: email,hint: emailHint),
                    10.heightBox,
                    customTextFields(title: password,hint: passwordHint),
                    Align(
                      alignment: Alignment.centerRight,
                        child: TextButton(onPressed: (){}, child: forgetPassword.text.make())),
                    customButton(onPress: (){},color: redColor,textColor: whiteColor,title: login).box.width(context.screenWidth-50).make(),
                    5.heightBox,
                    createAccount.text.color(fontGrey).make(),
                    5.heightBox,
                    customButton(onPress: (){
                      Get.to(()=>SignupScreen());
                    },color: lightGolden,textColor: redColor,title: signup).box.width(context.screenWidth-50).make(),
                    10.heightBox,
                    logiWith.text.color(fontGrey).make(),
                    5.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: lightGrey,
                          radius: 25,
                          child: Image.asset(sociallist[index],width: 30,),),
                      )),
                    )
                  ],
                ).box.rounded.padding(EdgeInsets.all(16)).white.width(context.screenWidth-50).shadowSm.make()
              ],
            ),
          ),
      )
    );
  }
}
