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
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  10.heightBox,
                  ElevatedButton(onPressed:(){},
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
                  shape: MaterialStateProperty.all(StadiumBorder())),                
                   child: "Buy".text.make()).wh(100, 50)
      
              ],
        ).p32(),
      ),
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
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
                  catalog.name.text.xl4.color(MyTheme.darkBluishColor).bold.make(),
                  catalog.desc.text.xl.textStyle(context.captionStyle).make(),

                ]
                
              ).py64(),
              color: Colors.white,
            ),
          ))
        ]),
      ),
    );
  }
}
