class Productmodel {
  List<product> listPro;
  Productmodel({required this.listPro});

  factory Productmodel.fromJeson(List json) {
    List<product> temp = json.map<product>((y) {
      return product(
        id: y["id"],
        name: y["name"],
        descrption: y["description"],
        price: y["price"],
        image: y["imagePath"],
      );
    }).toList();
    return Productmodel(listPro: temp);
  }
}

class product {
  String name;
  String descrption;
  double price;
  int id;
  String image;

  product({
    required this.id,
    required this.name,
    required this.descrption,
    required this.price,
    required this.image,
  });
}
