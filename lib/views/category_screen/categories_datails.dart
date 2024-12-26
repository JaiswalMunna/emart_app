import 'package:eecm/consts/consts.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../consts/lists.dart';
import '../../widgets_common/background_widget.dart';
import 'item_details.dart';

class CategoriesDetails extends StatelessWidget {
  final String? title;

  const CategoriesDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return backGround(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            title!,
            style: TextStyle(fontFamily: bold, color: Colors.white),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                // physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      6,
                      (index) => Text(
                            overflow: TextOverflow.ellipsis,
                            "Baby Clothing",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: semibold,
                                color: darkFontGrey),
                          )
                              .box
                              .alignCenter
                              .white
                              .size(120, 50)
                              .margin(EdgeInsets.symmetric(horizontal: 4))
                              .rounded
                              .make()),
                ),
              ),
              20.heightBox,
              Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        mainAxisExtent: 250),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP5,
                            height: 150,
                            width: 200,
                            fit: BoxFit.fill,
                          ),
                          Text(
                            "Laptop 4gb",
                            style: TextStyle(
                                fontFamily: semibold, color: darkFontGrey),
                          ),
                          10.heightBox,
                          Text(
                            "\$600",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: bold,
                                color: Colors.red),
                          ),
                          10.heightBox,
                        ],
                      )
                          .box
                          .rounded
                          .white
                          .outerShadowSm
                          .margin(EdgeInsets.symmetric(horizontal: 4))
                          .padding(EdgeInsets.all(12))
                          .make()
                          .onTap(() {
                        Get.to(() => ItemsDetails(
                              title: categoriesList[index],
                            ));
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
