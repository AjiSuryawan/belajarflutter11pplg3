import 'package:belajarflutter11pplg3/components/my_textfield.dart';
import 'package:belajarflutter11pplg3/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Registration")),
      body: Column(
        children: [
          MyTextfield(myHint: "input nama", txtController: txtNama, radius: 10),
          // lanjutkan dengan form yang lain alamat jenis kelamin dll
          ElevatedButton(
            onPressed: () {
              // pindah tampilan dan mengirim data
              Get.toNamed(
                Routes.confirmRegistration,
                arguments: {
                  'name': txtNama.text.toString(),
                  'jenis_kelamin': "laki laki", //dari widget kalian
                },
              );
            },
            child: Text("send"),
          ),
        ],
      ),
    );
  }
}
