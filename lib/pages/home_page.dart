import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'dart:convert';
import '../widgets/item_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  void initState() {
    
    super.initState();
    loadData();
  }

  loadData() async{
    await Future.delayed(Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Catalog App"),),
        
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        
        child: (CatalogModel.items!= null && CatalogModel.items.isNotEmpty)
        ? GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15), 
          
          itemBuilder: ( context,  index) { 
            return Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                
                borderRadius: BorderRadius.circular(10)
              ),
              child: GridTile(
                header: Container(
                  child: Text(CatalogModel.items[index].name, 
                  style: TextStyle(color: Colors.white),),
                  padding : EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,

                  ) 
                  ,),
                child: Image.network(CatalogModel.items[index].image),
                footer: Container(
                  child: Text(CatalogModel.items[index].price.toString(),
                  style: TextStyle(color: Colors.white),),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.black,

                  )
                  ),
                           
              ),
            );
           },
           itemCount: CatalogModel.items.length, )
        : Center(
          child: CircularProgressIndicator(),
        )
      ),
      drawer: MyDrawer(),
    );
  }
}
