import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel{


  //making singleton class  to create 1 object from line 7 to 9
  // static final cartModel = CartModel._internal();
  // CartModel._internal();  // constructor
  // factory CartModel() => cartModel;


  //catalog field
  late CatalogModel _catalog;

  //collection of IDs - store IDs of each item
  final List<int> _itemIds =[];

  CatalogModel get catalog => _catalog;

  //to set this catalog
  set catalog (CatalogModel newCatalog){    
    assert(newCatalog!=null);  
    _catalog = newCatalog;
  }

  //get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get sum 
  num get totalPrice => items.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item item){
    _itemIds.add(item.id);
  }

  //remove item
  void remove(Item item){
    _itemIds.remove(item.id);
  }

}

class AddMutation extends VxMutation<MyStore>{
  final Item item;

  AddMutation(this.item);

  @override
  perform() {
    store?.cart._itemIds.add(item.id); 
  }

}