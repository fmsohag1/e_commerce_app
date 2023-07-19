import 'package:e_commerce_app/const/consts.dart';
import 'package:e_commerce_app/const/lists.dart';
import 'package:e_commerce_app/screens/category_screen/category_details.dart';
import 'package:e_commerce_app/widgets/bg_widget.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: categories.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
              itemCount: 9,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 8,mainAxisSpacing: 8,mainAxisExtent: 200), itemBuilder: (context,index){
            return Column(
              children: [
                Image.asset(categoryImageList[index],width: 200,height: 120,fit: BoxFit.cover,),
                10.heightBox,
                categoriesList[index].text.color(darkFontGrey).align(TextAlign.center).make()
              ],
            ).box.white.rounded.clip(Clip.antiAlias).outerShadowSm.make().onTap(() {
              Get.to(()=>CategoryDetails(title: categoriesList[index]));
            });
          }),
        ),
      )
    );
  }
}
