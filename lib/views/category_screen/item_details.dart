import 'package:eecm/consts/consts.dart';

class ItemsDetails extends StatefulWidget {
  final String? title;

  const ItemsDetails({super.key, required this.title});

  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
  bool _isClickable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: Text(
          widget.title!,
          style: TextStyle(color: darkFontGrey),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              color: darkFontGrey,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _isClickable = !_isClickable;
              });
            },
            icon: Icon(
              _isClickable ? Icons.favorite : Icons.favorite_border,
              color: _isClickable ? Colors.red : darkFontGrey,
            ),
          )
        ],
      ),
      body: Column(),
    );
  }
}
