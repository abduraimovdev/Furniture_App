import 'product_model.dart';

class CartItem implements Comparable<CartItem> {
  String id;
  Product product;
  double total;
  String createAt;
  String modifyAt;
  String userId;
  int quantity;
  int color;

  CartItem({
    required this.id,
    required this.product,
    required this.total,
    required this.createAt,
    required this.modifyAt,
    required this.userId,
    required this.quantity,
    required this.color,
  });

  factory CartItem.fromJison(Map<String, Object?> json) => CartItem(
        id: json["id"] as String,
        product: Product.fromJson(json["product"] as Map<String, Object?>),
        total: json["total"] as double,
        createAt: json["createAt"] as String,
        modifyAt: json["modifyAt"] as String,
        userId: json["userId"] as String,
        quantity: json["quantity"] as int,
        color: json["color"] as int,
      );

  Map<String, Object?> toJson() => {
        "id": id,
        "product": product.toJson(),
        "total": total,
        "createAt": createAt,
        "modifyAt": modifyAt,
        "userId": userId,
        "quantity": quantity,
        "color": color,
      };

  @override
  String toString() {
    return 'CartItem{id: $id, product: $product, total: $total, createAt: $createAt, modifyAt: $modifyAt, userId: $userId, quantity: $quantity, color: $color}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartItem &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          product == other.product &&
          total == other.total &&
          createAt == other.createAt &&
          modifyAt == other.modifyAt &&
          userId == other.userId &&
          quantity == other.quantity && 
          color == other.color;

  @override
  int get hashCode =>
      Object.hash(id, product, total, createAt, modifyAt, userId, quantity, color);

  @override
  int compareTo(other) {
    return id.compareTo(other.id);
  }
}
