class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Iphone 13 Pro",
        desc: "Apple phone 13th gen.",
        price: 1000,
        color: "#33505a",
        image:
            "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-13-pro-blue-select?wid=470&hei=556&fmt=png-alpha&.v=1645552346275")
  ];
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
}
