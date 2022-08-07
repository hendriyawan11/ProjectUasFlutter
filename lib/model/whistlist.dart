class WishList {
  int idWishlist;
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

  WishList({
    required this.colors,
    this.description,
    required this.idWishlist,
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
    required this.sizes,
    this.tags,
    required this.idSparepart,
    required this.idUser,
  });

  factory WishList.fromJson(Map<String, dynamic> json) => WishList(
        idWishlist: int.parse(json['id_wishlist']),
        idSparepart: int.parse(json['id_sparepart']),
        idUser: int.parse(json['id_user']),
        name: json['name'],
        rating: double.parse(json['rating']),
        tags: json['name'],
        price: double.parse(json['price']),
        sizes: json['sizes'],
        colors: json['colors'],
        description: json['description'],
        image: json['image'],
      );
}
