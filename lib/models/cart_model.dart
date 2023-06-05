
import 'product_model.dart';

class CartModel implements Comparable {
  String id;
  Product product;
  double total;
  String createdAt;
  String modifyAt;
  String userId;
  int quantity;

  CartModel(
      {required this.id,
      required this.product,
      required this.total,
      required this.createdAt,
      required this.modifyAt,
      required this.userId,
      required this.quantity});

  @override
  int compareTo(other) {
    return userId.compareTo(other.userId);
  }

  factory CartModel.fromJson(Map<String, Object?> json) => CartModel(
      id: json["id"] as String,
      product: Product.fromJson(json["product"] as Map<String, Object>),
      total: json["total"] as double,
      createdAt: json["createdAt"] as String,
      modifyAt: json["modifyAt"] as String,
      userId: json["userId"] as String,
      quantity: json["quantity"] as int);

  Map<String, Object> toJson() => {
        "userId": userId,
        "id": id,
        "product": product.toJson(),
        "total": total,
        "createdAt": createdAt,
        "modifyAt": modifyAt,
        "quantity": quantity,
      };

  @override
  String toString() {
    return "CartModel(id: $id, product: $product, total: $total, createdAt: $createdAt, modifyAt: $modifyAt, userId: $userId, quantity: $quantity)";
  }

  @override
  bool operator ==(Object other) =>
      other is CartModel &&
          id == other.id &&
          product == other.product &&
          total == other.total &&
          createdAt == other.createdAt &&
          modifyAt == other.modifyAt &&
          userId == other.userId &&
          quantity == other.quantity;

  @override
  int get hashCode => Object.hash(id, product,total, createdAt, modifyAt,userId,quantity);

}
