import 'package:furniture_app/models/category_model.dart';
import 'package:furniture_app/models/product_model.dart';

///
final product1 = Product(
    id: "01",
    name: "Coffee table",
    desc: "desc",
    createdAt: DateTime.now().toString(),
    modifyAt: DateTime.now().toString(),
    images: {},
    colors: [],
    sku: "sku",
    category: Category(
        id: "",
        name: "",
        description: "",
        createdAt: "",
        modifyAt: "",
        icon: ""),
    price: 50,
    review: [],
    isFavorite: false,
    totalQuantity: {},);

final productsList = [
  product1,
];
