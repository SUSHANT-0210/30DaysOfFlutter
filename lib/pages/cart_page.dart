import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
        title: "Cart".text.xl3.make(),
      ),
      backgroundColor: context.canvasColor ,
      body: Column(children: [
        _CartList().p32().expand(),
        Divider(),
        _CartTotal(),

      ]),
      
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9999".text.xl5.color(context.accentColor).make(),
          30.widthBox,
          ElevatedButton(onPressed: (){}, 
          child: "Buy".text.white.make(),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(context.theme.buttonColor)),
          ).w24(context)
        ],
      ),
    );

    
  }
}


class _CartList extends StatefulWidget {
  _CartList({Key? key}) : super(key: key);

  @override
  State<_CartList> createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context,index)=>ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.remove_circle_outline)),
        title: "Item 1".text.make(),

      ),
    );
  }
}