import 'package:get/get_navigation/get_navigation.dart';

class Locales extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'Login': 'Login',
          'Username': 'Username',
          'Password': 'Password',
          'Setting': 'Setting',
          'GetX Todo App': 'GetX Todo App',
          'Add Todo': 'Add Todo',
          'Uncomplated Todo': 'Uncomplated Todo',
          'All': 'All',
          'Complated': "Complated",
          'Uncomplated': "Uncomplated",
          'Change Theme': 'Change Theme',
          'Change Language': 'Change Language',
          'Light Theme': 'Light Theme',
          'Dark Theme': 'Dark Theme'
        },
        'tr_TR': {
          'Login': 'Giriş Yap',
          'Username': 'Kullanıcı Adı',
          'Password': 'Şifre',
          'Setting': 'Ayarlar',
          'GetX Todo App': 'GetX Yapılıcaklar Listesi',
          'Add Todo': 'Görev Ekle',
          'Uncomplated Todo': 'Görev \nTamamlanmamış',
          'All': 'Tüm',
          'Complated': "Tamamlananlar",
          'Uncomplated': "Tamamlanmayanlar",
          'Change Theme': 'Temayı Değiştir',
          'Change Language': 'Dili Değiştir',
          'Light Theme': 'Açık Tema',
          'Dark Theme': 'Koyu Tema'
        }
      };
}
