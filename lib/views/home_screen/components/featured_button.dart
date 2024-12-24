import 'package:eecm/consts/consts.dart';

Widget featuredButton({icon,String? title}) {
  return Row(
    children: [
      Image.asset(icon,width: 40,fit: BoxFit.fill,),
      10.widthBox,
      Text(
        title!,
        style: TextStyle(fontFamily: semibold, color: darkFontGrey),
      )
    ],
  ).box.width(200).margin(EdgeInsets.symmetric(horizontal: 4)).white.padding(EdgeInsets.all(4)).roundedSM.outerShadowSm.make();
}
