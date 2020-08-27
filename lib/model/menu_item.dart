class MenuItem {
  String id;
  String title;
  String description;
  num price;
  num discount;
  String image;
  String category;
  List<int> rate;
  num cookingTime;

  MenuItem({
    this.id,
    this.title,
    this.description,
    this.price,
    this.discount,
    this.category,
    this.image,
    this.rate = const [],
    this.cookingTime = 0,
  });

  MenuItem.fromJson(json, this.id) {
    title = json['title'];
    description = json['description'];
    price = json['price'];
    discount = json['discount'];
    image = json['image'];
    category = json['category'];
    cookingTime = json['cookingTime'];
  }

  mediaRate() {
    double media = 0;
    rate.forEach((rate) {
      media += rate;
    });
    return media / rate.length;
  }

  double get totalPriceWithDiscount {
    if (discount == 0 || discount == null) return price;
    return price - (price / 100 * discount);
  }
}
