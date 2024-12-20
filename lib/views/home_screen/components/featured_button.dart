import 'package:eecm/consts/consts.dart';
import 'package:eecm/consts/lists.dart';

Widget featuredButton() {
  return Row(
    children: [
      Image.asset(imgS1,width: 40,fit: BoxFit.fill,),
      10.widthBox,
      Text(
        womenDress,
        style: TextStyle(fontFamily: semibold, color: darkFontGrey),
      )
    ],
  ).box.white.roundedSM.outerShadowSm.make();
}
