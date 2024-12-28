import 'package:eecm/consts/consts.dart';

import '../../widgets_common/custom_button.dart';

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
          style: TextStyle(color: darkFontGrey, fontFamily: bold),
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
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //swipper section
                  VxSwiper.builder(
                      autoPlay: true,
                      height: context.screenHeight - 550,
                      aspectRatio: 16 / 9,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          imgFc5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      }),
                  10.heightBox,

                  //title
                  //Text(title!),
                  //title!.text.size(16).color(darkFontGrey).make(),
                  Text(
                    widget.title!,
                    style: TextStyle(
                      color: darkFontGrey,
                      fontFamily: semibold,
                      fontSize: 16,
                    ),
                  ),
                  10.heightBox,
                  VxRating(
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    count: 5,
                    size: 25,
                    stepInt: true,
                  ),
                  10.heightBox,
                  Text(
                    "\$30,000",
                    style: TextStyle(
                        fontFamily: bold, fontSize: 18, color: Colors.red),
                  ),
                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Seller",
                              style: TextStyle(
                                  fontFamily: semibold, color: Colors.white),
                            ),
                            5.heightBox,
                            Text(
                              "In House Brands",
                              style: TextStyle(fontFamily: semibold),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.message_rounded,
                          color: darkFontGrey,
                        ),
                      )
                    ],
                  )
                      .box
                      .height(60)
                      .padding(EdgeInsets.symmetric(horizontal: 16))
                      .color(textfieldGrey)
                      .make(),

                  //color section
                  20.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color:".text.color(textfieldGrey).make(),
                          ),
                          Row(
                              children: List.generate(
                                  3,
                                  (index) => VxBox()
                                      .size(40, 40)
                                      .roundedFull
                                      .color(Vx.randomPrimaryColor)
                                      .margin(EdgeInsets.symmetric(horizontal: 4))
                                      .make())),
                        ],
                      ).box.padding(EdgeInsets.all(8)).make(),

                      //quantity row
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color:".text.color(textfieldGrey).make(),
                          ),
                          Row(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                                "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                                IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                                10.widthBox,
                                "(0 Available)".text.color(textfieldGrey).make(),
                              ],
                          ),
                        ],
                      ).box.padding(EdgeInsets.all(8)).make(),


                    ],
                  ).box.white.shadowSm.make(),
                ],
              ),
            ),
          )),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: customButton(
                color: redColor,
                onPress: () {},
                textcolor: whiteColor,
                title: "Add to Cart"),
          ),
        ],
      ),
    );
  }
}
