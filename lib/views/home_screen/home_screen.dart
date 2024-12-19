import 'package:eecm/consts/consts.dart';
import 'package:eecm/consts/lists.dart';

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
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                hintStyle: TextStyle(color: textfieldGrey),
                hintText: searchanything,
              ),
            ),
          ),
          VxSwiper.builder(
              itemCount: sliderList.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                  child: Image.asset(
                    sliderList[index],
                    fit: BoxFit.fill,
                  ),
                );
              })
        ],
      )),
    );
  }
}
