import 'package:eecm/consts/consts.dart';

Widget backGround({Widget? child}){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imgBackground),fit: BoxFit.fill),),
    child: child,
  );
}