class MenuItem {
  String title;
  String description;
  double price;
  double discount;
  String image;
  String category;
  List<int> rate;
  int cookingTime;

  MenuItem({
    this.title,
    this.description,
    this.price,
    this.discount,
    this.category,
    this.image,
    this.rate = const [],
    this.cookingTime = 0,
  });

  MenuItem.fromJson(json) {
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
}
