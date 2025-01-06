import 'package:eecm/consts/consts.dart';

import '../../consts/lists.dart';
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
                    "\$3000",
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
                                      .margin(
                                          EdgeInsets.symmetric(horizontal: 4))
                                      .make())),
                        ],
                      ).box.padding(EdgeInsets.all(8)).make(),

                      //quantity row
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Quantity:".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.remove)),
                              "0"
                                  .text
                                  .size(16)
                                  .color(darkFontGrey)
                                  .fontFamily(bold)
                                  .make(),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.add)),
                              10.widthBox,
                              "(0 Available)".text.color(textfieldGrey).make(),
                            ],
                          ),
                        ],
                      ).box.padding(EdgeInsets.all(8)).make(),

                      //total
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Total:".text.color(textfieldGrey).make(),
                          ),
                          "\$0.00"
                              .text
                              .color(Colors.red)
                              .size(16)
                              .fontFamily(bold)
                              .make(),
                        ],
                      ).box.padding(EdgeInsets.all(8)).make(),
                    ],
                  ).box.white.shadowSm.make(),

                  10.heightBox,
                  //description
                  "Description"
                      .text
                      .color(darkFontGrey)
                      .fontFamily(bold)
                      .make(),
                  10.heightBox,
                  "This is a dummy page and dummy description here"
                      .text
                      .color(darkFontGrey)
                      .make(),
                  10.heightBox,
                  ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(
                      itemDetailsButtonList.length,
                      (index) => ListTile(
                        title:
                            itemDetailsButtonList[index].text.semiBold.make(),
                        trailing: Icon(Icons.arrow_forward_rounded),
                      ),
                    ),
                  ),
                  10.heightBox,
                  //products
                  productyoumay.text
                      .color(darkFontGrey)
                      .fontFamily(bold)
                      .size(16)
                      .make(),
                  10.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          6,
                              (index) => Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                imgP1,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              10.heightBox,
                              Text(
                                "Laptop 4gb",
                                style: TextStyle(
                                    fontFamily: semibold,
                                    color: darkFontGrey),
                              ),
                              10.heightBox,
                              Text(
                                "\$600",
                                style: TextStyle(
                                    fontFamily: bold,
                                    color: Colors.red),
                              ),
                            ],
                          )
                              .box
                              .rounded
                              .margin(
                              EdgeInsets.symmetric(horizontal: 4))
                              .white
                              .padding(EdgeInsets.all(8))
                              .make()),
                    ),
                  ),
                  10.heightBox,
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
          5.heightBox,
        ],
      ),
    );
  }
}
