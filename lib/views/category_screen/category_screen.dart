import 'package:eecm/consts/consts.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../consts/lists.dart';
import '../../widgets_common/background_widget.dart';
import 'categories_datails.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return backGround(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            categories,
            style: TextStyle(fontFamily: bold, color: Colors.white),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: GridView.builder(
              shrinkWrap: true,
              itemCount: 9,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 200),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(
                      categoriesImages[index],
                      height: 120,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    10.heightBox,
                    Text(
                      categoriesList[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(color: darkFontGrey),
                    ),
                  ],
                ).box.white.rounded
                    .clip(Clip.antiAlias)
                    .outerShadowSm
                    .make()
                    .onTap(() {
                  Get.to(() => CategoriesDatails(title: categoriesList[index]));
                });
              }),
        ),
      ),
    );
  }
}
