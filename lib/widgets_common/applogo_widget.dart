import 'package:eecm/consts/consts.dart';

Widget appLogoWidget() {
  return Container(
    padding: EdgeInsets.all(8.0),
    height: 77,
    width: 77,
    child: Image.asset(icAppLogo),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: [
          BoxShadow(color: Colors.black, blurRadius: 10, offset: Offset(0, 8))
        ]),
  );
}
