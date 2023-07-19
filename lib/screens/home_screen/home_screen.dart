import 'package:e_commerce_app/const/consts.dart';
import 'package:e_commerce_app/const/lists.dart';
import 'package:e_commerce_app/screens/home_screen/components/feature_button.dart';
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
                  20.heightBox,
                  Align(
                      alignment: Alignment.centerLeft,
                      child: featureCategories.text.color(darkFontGrey).size(18).make()),
                  20.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(3, (index) => Column(
                        children: [
                          featureButton(
                              icon: featureImage1[index],
                            title: featureTitle1[index]
                          ),
                          10.heightBox,
                          featureButton(
                              icon: featureImage2[index],
                              title: featureTitle2[index]
                          )
                        ],
                      )
                      ).toList(),
                    ),
                  ),
                  20.heightBox,
                  Container(
                    padding: EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: BoxDecoration(color: redColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        featureProduct.text.white.fontFamily(bold).size(18).make(),
                        10.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(6, (index) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(imgP1,width: 150,fit: BoxFit.cover,),
                                10.heightBox,
                                "Laptop 4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                                10.heightBox,
                                "\$600".text.color(redColor).fontFamily(bold).size(16).make()
                              ],
                            ).box.white.roundedSM.margin(EdgeInsets.symmetric(horizontal: 4)).padding(EdgeInsets.all(8)).make()
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  20.heightBox,
                  VxSwiper.builder(
                      enlargeCenterPage: true,
                      aspectRatio: 16/9,
                      height: 150,
                      autoPlay: true,
                      itemCount: secondSliderListr.length, itemBuilder: (context,index){
                    return Image.asset(secondSliderListr[index],fit: BoxFit.fill,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                  }),
                  20.heightBox,
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 8,mainAxisSpacing: 8,mainAxisExtent: 300), itemBuilder: (context,index){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(imgP5,width: 200,height:200,fit: BoxFit.cover,),
                        Spacer(),
                        10.heightBox,
                        "Laptop 4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                        10.heightBox,
                        "\$600".text.color(redColor).fontFamily(bold).size(16).make()
                      ],
                    ).box.white.roundedSM.margin(EdgeInsets.symmetric(horizontal: 4)).padding(EdgeInsets.all(12)).make();
                  }
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
