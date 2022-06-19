import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl3.make(),
                  10.heightBox,
                  ElevatedButton(onPressed:(){},
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
                  shape: MaterialStateProperty.all(StadiumBorder())),                
                   child: "Add to cart".text.make()).wh(120, 50)
      
              ],
        ).p32(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent ),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.asset(catalog.image))
              .h32(context),
          Expanded(
              child: VxArc(
            height: 28.0,
            edge: VxEdge.TOP,
            arcType: VxArcType.CONVEY,
            child: Container(
              width: context.screenWidth,
              child: Column(
                children: [
                  catalog.name.text.xl4.color(context.accentColor).bold.make(),
                  catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.  and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
                  .text.textStyle(context.captionStyle).make().p16(),

                ]
                
              ).py64(),
              color: context.cardColor,
            ),
          ))
        ]),
      ),
    );
  }
}
