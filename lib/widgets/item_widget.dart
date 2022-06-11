import 'package:flutter/material.dart';

import '../models/catalog.dart';


class ItemWidget extends StatelessWidget {

  final Item item;

  const ItemWidget({super.key, required this.item});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image,width: 70,height: 80,),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
        textScaleFactor: 1.5,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),),
      ),
    );

  }
}