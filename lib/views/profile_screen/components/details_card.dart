import 'package:eecm/consts/consts.dart';

Widget detailsCard({width, String? count, String? title}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      "00"
          .text
          .fontFamily(bold)
          .color(darkFontGrey)
          .size(16)
          .make(),
      5.heightBox,
      "in your cart".text.color(darkFontGrey).make()
    ],
  )
      .box
      .color(Colors.white)
      .width(width)
      .height(60)
      .padding(EdgeInsets.all(4))
      .roundedSM
      .make();
}
