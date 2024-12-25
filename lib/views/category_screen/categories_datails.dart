import 'package:eecm/consts/consts.dart';

import '../../consts/lists.dart';
import '../../widgets_common/background_widget.dart';

class CategoriesDatails extends StatelessWidget {

  final String? title;
  const CategoriesDatails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return backGround(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title!,style: TextStyle(fontFamily: bold,color: Colors.white),),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
