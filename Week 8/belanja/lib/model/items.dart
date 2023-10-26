class Item {
  String? url;
  String name;
  double? price;
  int? stok;
  double? rating;
  String desc;

  Item(
      {required this.name,
      this.price,
      this.stok,
      this.url,
      this.rating,
      required this.desc});
}
