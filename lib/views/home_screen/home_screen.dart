import 'package:eecm/consts/consts.dart';
import 'package:eecm/consts/lists.dart';

import '../../widgets_common/home_buttons.dart';
import 'components/featured_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: context.screenHeight - 805,
            color: lightGrey,
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                hintStyle: TextStyle(color: textfieldGrey),
                hintText: searchanything,
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
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: context.screenHeight - 700,
                      itemCount: sliderList.length,
                      enlargeCenterPage: true,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          sliderList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      }),
                  10.heightBox,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      2,
                      (index) => homeButtons(
                          height: context.screenHeight * 0.15,
                          width: context.screenWidth / 2.5,
                          icon: index == 0 ? icTodaysDeal : icFlashDeal,
                          title: index == 0 ? todayDeal : flashsale,
                          onPress: () {}),
                    ),
                  ),
                  10.heightBox,

                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: context.screenHeight - 700,
                      itemCount: sliderList1.length,
                      enlargeCenterPage: true,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          sliderList1[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      }),

                  10.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        3,
                        (index) => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: homeButtons(
                              height: context.screenHeight * 0.15,
                              width: context.screenWidth / 2.5,
                              icon: index == 0
                                  ? icTopCategories
                                  : index == 1
                                      ? icBrands
                                      : icTopSeller,
                              title: index == 0
                                  ? topCategory
                                  : index == 1
                                      ? brand
                                      : topSellers,
                              onPress: () {}),
                        ),
                      ),
                    ),
                  ),

                  //featured categories
                  20.heightBox,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      featuredCategories,
                      style: TextStyle(fontFamily: bold, fontSize: 20),
                    ),
                  ),
                  10.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        3,
                        (index) => Column(
                          children: [
                            featuredButton(title: featuredTitles1[index],icon: featuredList1[index]),
                            10.heightBox,
                            featuredButton(title: featuredTitles2[index],icon: featuredList2[index]),
                          ],
                        ),
                      ).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
