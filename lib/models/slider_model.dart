class Slider {
  bool status;
  dynamic message;
  List<Datum> data;

  Slider({
    required this.status,
    required this.message,
    required this.data,
  });

  factory Slider.fromJson(Map<String, dynamic> json) => Slider(
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  int id;
  String image;
  dynamic category;
  dynamic product;

  Datum({
    required this.id,
    required this.image,
    required this.category,
    required this.product,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        image: json["image"],
        category: json["category"],
        product: json["product"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "category": category,
        "product": product,
      };
}
