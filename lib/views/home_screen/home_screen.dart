import 'package:e_commerce_app/const/consts.dart';
import 'package:e_commerce_app/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller=Get.put(HomeController());
    var navbarItem=[
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 26,),label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26,),label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart,width: 26,),label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile,width: 26,),label: account),
    ];
    var navBody=[
      Container(color: Colors.blue,),
      Container(color: Colors.green,),
      Container(color: Colors.purple,),
      Container(color: Colors.cyan,),
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(()=>Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(()=>
        BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          backgroundColor: whiteColor,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: redColor,
            selectedLabelStyle: TextStyle(fontFamily: semibold),
            items: navbarItem,
          onTap: (value){
            controller.currentNavIndex.value=value;
          },
        ),
      ),
    );
  }
}
