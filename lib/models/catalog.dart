class CatalogModel {

  //making singleton class  to create 1 object from line 4 to 6
  // static final catModel = CatalogModel._internal();
  // CatalogModel._internal();  // constructor
  // factory CatalogModel() => catModel;


  static  List<Item> items = [];


  //get by ID
   Item getById(int id) => items.firstWhere((element) => element.id == id, orElse: null);


  //get by position
   Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  // fromMap() => {
  //       id: "id",
  //       name: "name",
  //       desc: "desc",
  //       price: "price",
  //       color: "color",
  //       image: "image",
  //     };

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
