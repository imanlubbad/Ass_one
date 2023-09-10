class Meals {
  String? name, image;
  Extras? extras;
  List<Burger>? burgerList;
  Meals(Map map) {
    this.name = map['name'];
    this.image = map['image'];
    burgerList = [];
    this.extras = Extras(map['extras']);
    map['ingreditns'].forEach((e) {
      burgerList!.add(Burger(e, e.keys.first));
    });
  }
}

class Extras {
  List<Bread>? bread;
  List<Cheese>? cheese;
  Extras(Map map) {
    cheese = [];
    bread = [];
    map['cheese'].forEach((element) {
      cheese!.add(Cheese(element));
    });
    map['bread'].forEach((element) {
      bread!.add(Bread(element));
    });
  }
}

class Bread {
  String? size, price;
  Bread(Map<String, String> map) {
    this.price = map['price'];
    this.size = map['size'];
  }
}

class Cheese {
  String? quantity, price;
  Cheese(Map<String, String> map) {
    this.price = map['price'];
    this.quantity = map['quantity'];
  }
}

class Burger {
  int? price;
  String? currency;
  String? name;
  List? additionals;
  Burger(Map map, String name) {
    this.name = name;
    this.price = map['price'];
    this.currency = map['currency'];
    this.additionals =
        map['checkenBurger'] != null ? map['checkenBurger'] : map['beefburger'];
  }
}
