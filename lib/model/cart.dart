
class Cart {
  int idCart;
  int idUser;
  int idSparepart;
  String name;
  double rating;
  List<String>? tags;
  double price;
  List<String> sizes;
  List<String> colors;
  String? description;
  String image;
  int quantity;

  Cart({
    required this.colors,
    this.description,
    required this.idCart,
    required this.idSparepart,
    required this.idUser,
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
    required this.sizes,
    this.tags,
    required this.quantity,
  });

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
        idCart: int.parse(json['id_cart']),
        idSparepart: int.parse(json['id_sparepart']),
        idUser: int.parse(json['id_user']),
        name: json['name'],
        rating: double.parse(json['tags']),
        tags: json['tags'],
        price: double.parse(json['price']),
        sizes: json['sizes'],
        colors: json['colors'],
        description: json['description'],
        image: json['image'],
        quantity: int.parse(json['quantity']),
      );

  Map<String, dynamic> toJson() => {
        'id_cart':idCart,
        'id_sparepart': idSparepart,
        'id_User': idUser,
        'quantity': quantity,
      };
}
