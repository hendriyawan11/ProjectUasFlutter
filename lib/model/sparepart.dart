class Sparepart {
  int idSparepart;
  String name;
  double rating;
  List<String>? tags;
  double price;
  List<String> sizes;
  List<String> colors;
  String? description;
  String image;

  Sparepart({
    required this.colors,
    this.description,
    required this.idSparepart,
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
    required this.sizes,
    this.tags,
  });

  factory Sparepart.fromJson(Map<String, dynamic> json) => Sparepart(
        idSparepart: int.parse(json['id_Sparepart']),
        name: json['name'],
        rating: double.parse(json['rating']),
        tags: json['tags'],
        price: double.parse(json['price']),
        sizes: json['sizes'],
        colors: json['colors'],
        description: json['description'],
        image: json['image'],
      );

  Map<String, dynamic> toJson() => {
        'id_Sparepart': idSparepart,
        'name': name,
        'rating': rating,
        'tags': tags,
        'price': price,
        'sizes': sizes,
        'colors': colors,
        'description': description,
        'image': image,
      };
}
