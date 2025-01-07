import 'package:eecm/consts/consts.dart';
import 'package:eecm/consts/lists.dart';
import 'package:eecm/widgets_common/background_widget.dart';

import 'components/details_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return backGround(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              //edit profile button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.edit, color: Colors.white))
                    .onTap(() {}),
              ),

              //user section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Image.asset(
                      imgProfile2,
                      width: 100,
                      fit: BoxFit.cover,
                    ).box.roundedFull.clip(Clip.antiAlias).make(),
                    10.widthBox,
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "NO user name"
                            .text
                            .color(Colors.white)
                            .fontFamily(semibold)
                            .size(16)
                            .make(),
                        "user@gmail.com"
                            .text
                            .color(Colors.white)
                            .fontFamily(semibold)
                            .size(16)
                            .make(),
                      ],
                    )),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: whiteColor,
                          ),
                        ),
                        onPressed: () {},
                        child: "Logout"
                            .text
                            .fontFamily(semibold)
                            .color(Colors.white)
                            .make())
                  ],
                ),
              ),
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsCard(
                      count: "00",
                      title: "in your cart",
                      width: context.screenWidth / 3.5),
                  detailsCard(
                      count: "221",
                      title: "in your wishlist",
                      width: context.screenWidth / 3.5),
                  detailsCard(
                      count: "3037",
                      title: "you ordered",
                      width: context.screenWidth / 3.5),
                ],
              ),
              //Buttons Sections
              ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: lightGrey,
                        );
                      },
                      itemCount: profileButtonsList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Image.asset(
                            profileIconsList[index],
                            width: 22,
                          ),
                          title: profileButtonsList[index]
                              .text
                              .color(darkFontGrey)
                              .fontFamily(semibold)
                              .make(),
                        );
                      })
                  .box
                  .white
                  .rounded
                  .margin(EdgeInsets.all(12))
                  .shadowSm
                  .padding(EdgeInsets.symmetric(horizontal: 16))
                  .make()
                  .box
                  .color(Colors.red)
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
