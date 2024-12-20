import 'package:eecm/consts/consts.dart';

Widget homeButtons({height, width, icon, String? title, onPress}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icon,
        width: 26,
      ),
      10.heightBox,
      Text(
        title!,
        style: TextStyle(color: darkFontGrey, fontFamily: semibold),
      )
    ],
  ).box.rounded.white.size(width, height).shadowSm.make();
}
