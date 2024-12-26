import 'package:eecm/consts/consts.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../widgets_common/background_widget.dart';
import 'item_details.dart';

class ItemsDetails extends StatelessWidget {
  final String? title;

  const ItemsDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: Text(title!,style: TextStyle(color: darkFontGrey),),
        actions: [
          IconButton(
              onPressed: () {
              },
              icon: Icon(Icons.share,color: darkFontGrey,),
          ),
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.favorite_border,color: darkFontGrey,),
          )
        ],
      ),
      body: Column(),
    );
  }
}
