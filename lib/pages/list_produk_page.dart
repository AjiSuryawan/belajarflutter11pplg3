import 'package:belajarflutter11pplg3/controller/list_produk_controller.dart';
import 'package:belajarflutter11pplg3/models/produk_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Products")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listProduk.length,
          itemBuilder: (context, index) {
            final produk = controller.listProduk[index];
            return ListTile(
              title: Text(produk.namaProduk),
              subtitle: Text(produk.harga),
              leading: Icon(Icons.arrow_forward),
            );
          },
        ),
      ),
    );
  }
}
