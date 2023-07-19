import 'package:e_commerce_app/const/consts.dart';
import 'package:e_commerce_app/const/lists.dart';
import 'package:e_commerce_app/screens/profile_screen/component/details_card.dart';
import 'package:e_commerce_app/widgets/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight,
                  child: Icon(Icons.edit,color: whiteColor,)).onTap(() {}),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Image.asset(imgProfile2,width: 100,fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.heightBox,
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Dummy user".text.fontFamily(semibold).white.make(),
                      "custome@gmail.com".text.white.make()
                    ],
                  )),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white)
                    ),
                      onPressed: (){}, child: logout.text.fontFamily(semibold).white.make())
                ],
              ),
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                detailsCard(count: "00",title: "in your cart",width: context.screenWidth/3.5),
                detailsCard(count: "30",title: "in your wishlist",width: context.screenWidth/3.5),
                detailsCard(count: "256",title: "your orders",width: context.screenWidth/3.5),
              ],
            ),

            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context,index){
                return Divider(color: lightGrey,);
              },
                itemCount: profileButtonList.length,
              itemBuilder: (BuildContext context,int index){
                  return ListTile(
                    leading: Image.asset(profileButtonIcon[index],width: 20,),
                    title: profileButtonList[index].text.fontFamily(bold).color(darkFontGrey).make(),
                  );
              },
            ).box.white.rounded.shadowSm.margin(EdgeInsets.all(12)).padding(EdgeInsets.symmetric(horizontal: 16)).make().box.color(redColor).make()
          ],
        )),
      )
    );
  }
}
