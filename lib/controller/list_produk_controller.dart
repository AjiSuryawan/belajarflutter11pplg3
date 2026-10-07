import 'package:belajarflutter11pplg3/models/produk_model.dart';
import 'package:get/get.dart';

class ListProdukController extends GetxController {
  List<ProdukModel> listProduk = [
    ProdukModel(namaProduk: "Samsung Galaxy Fold", harga: "10 juta"),
    ProdukModel(namaProduk: "iPhone 20", harga: "25 juta"),
    ProdukModel(namaProduk: "Laptop ROG", harga: "30 juta"),
    ProdukModel(namaProduk: "PS 5", harga: "8 juta"),
    ProdukModel(namaProduk: "Smart TV Android", harga: "10 juta"),
    // dll
  ];
}
