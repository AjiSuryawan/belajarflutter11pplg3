import 'package:belajarflutter11pplg3/pages/confirm_registration_page.dart';
import 'package:belajarflutter11pplg3/pages/list_produk_page.dart';
import 'package:belajarflutter11pplg3/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  // list pages yang ada di aplikasi
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String listProduk = "/listProduk";
  // dll login , kalkulator

  // kita tampung kedalam array yang akan kita pasang ke main dart
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: listProduk, page: () => ListProdukPage()),
    // others page here dll
  ];
}
