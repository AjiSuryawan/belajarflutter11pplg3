import 'package:belajarflutter11pplg3/components/my_textfield.dart';
import 'package:belajarflutter11pplg3/controller/kalkulator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());
  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator")),
      body: Column(
        children: [
          MyTextfield(
            myHint: "input angka 1",
            txtController: txtangka1,
            radius: 10,
          ),
          MyTextfield(
            myHint: "input angka 2",
            txtController: txtangka2,
            radius: 10,
          ),
          ElevatedButton(
            onPressed: () {
              controller.tambah(
                double.parse(txtangka1.text.toString()),
                double.parse(txtangka2.text.toString()),
              );
            },
            child: Text("tambah"),
          ),

          Obx(
            () => Text(
              controller.hasilHitung.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
