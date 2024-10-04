class ProductModel {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  ProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  // From JSON constructor with safe type casting
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],

      // Safely casting price to double
      price: (json['price'] is int) ? (json['price'] as int).toDouble() : json['price'],

      description: json['description'],
      category: json['category'],
      image: json['image'],

      // Handling nested Rating model
      rating: json['rating'] != null ? Rating.fromJson(json['rating']) : null,
    );
  }

  // To JSON method
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['price'] = price;
    map['description'] = description;
    map['category'] = category;
    map['image'] = image;
    if (rating != null) {
      map['rating'] = rating?.toJson();
    }
    return map;
  }
}

class Rating {
  double? rate;
  int? count;

  Rating({
    this.rate,
    this.count,
  });

  // From JSON constructor with safe type casting
  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      // Safely casting rate to double
      rate: (json['rate'] is int) ? (json['rate'] as int).toDouble() : json['rate'],

      count: json['count'],
    );
  }

  // To JSON method
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rate'] = rate;
    map['count'] = count;
    return map;
  }
}
