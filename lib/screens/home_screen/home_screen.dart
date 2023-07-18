import 'package:e_commerce_app/const/consts.dart';
import 'package:e_commerce_app/const/lists.dart';
import 'package:e_commerce_app/widgets/home_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(child: Column(
        children: [
          Container(
            height: 60,
            alignment: Alignment.center,
            color: lightGrey,
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search,color: textfieldGrey,),
                filled: true,
                fillColor: whiteColor,
                hintText: searchAnything,
                hintStyle: TextStyle(color: textfieldGrey),
                border: InputBorder.none
              ),
            ),
          ),
          10.heightBox,
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  VxSwiper.builder(
                      enlargeCenterPage: true,
                      aspectRatio: 16/9,
                      height: 150,
                      autoPlay: true,
                      itemCount: sliderlist.length, itemBuilder: (context,index){
                    return Image.asset(sliderlist[index],fit: BoxFit.fill,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                  }),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(2, (index) => homeButton(
                        width: context.screenWidth/2.5,
                        height: context.screenHeight*0.15,
                        icon: index==0?icTodaysDeal:icFlashDeal,
                        title: index==0?todayDeal:flashSale,
                        onPress: (){})),
                  ),
                  10.heightBox,
                  VxSwiper.builder(
                      enlargeCenterPage: true,
                      aspectRatio: 16/9,
                      height: 150,
                      autoPlay: true,
                      itemCount: secondSliderListr.length, itemBuilder: (context,index){
                    return Image.asset(secondSliderListr[index],fit: BoxFit.fill,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                  }),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(3, (index) => homeButton(
                        width: context.screenWidth/3.5,
                        height: context.screenHeight*0.15,
                        icon: index==0?icTopCategories:index==1?icBrands:icTopSeller,
                        title: index==0?topCategories:index==1?brand:topSeller,
                        onPress: (){})),
                  ),
                  10.heightBox,
                  Align(
                      alignment: Alignment.centerLeft,
                      child: featureCategories.text.color(darkFontGrey).size(18).make())
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
