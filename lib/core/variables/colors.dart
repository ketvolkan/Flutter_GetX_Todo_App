import 'package:flutter/material.dart';
import 'package:get/get.dart';

const Color darkModeBg = Color(0xff292929);
const Color lightModeBg = Color.fromARGB(255, 246, 246, 246);
const Color primaryLightColor = Color.fromARGB(255, 245, 245, 255);
const Color splashBg = Color(0xff010303);

// SmsListColor
const Color expiredColor = Color(0xFFEECCD4);
const Color deliveredColor = Color(0xFFD5FBE0);
const Color returnColor = Color(0xFF9277D4);
const Color waitingColor = Color(0xFFE6E6E6);

const Color expiredTextColor = Colors.red;
const Color deliveredTextColor = Color(0xFF36EA6B);
const Color returnTextColor = Color.fromARGB(255, 90, 25, 255);

// Common
const Color primaryColor = Color.fromARGB(255, 23, 102, 116);
const Color primaryColorDark = Colors.white;
Color errorColor = Colors.red[400]!;
Color buttonColor = const Color.fromARGB(255, 246, 246, 246);
Color selectionBackgroundColor = const Color.fromRGBO(
    201, 7, 214, 0.13); //Weekly takvim görünümü selected card background
Color selectedItemColor = const Color.fromRGBO(
    106, 44, 199, .32); //Weekly takvim görünümü selected day circle background
Color unSelectedItemColor = const Color.fromRGBO(106, 44, 199,
    0.03); //Weekly takvim görünümü unselected day circle background
Color erorColorLight = const Color.fromRGBO(254, 221, 229, 1);
Color toggleableActiveColor = const Color.fromRGBO(66, 19, 174, 1);
Color toggleableBackgroundColor = const Color.fromRGBO(230, 230, 230, 1);
Color serviceTimeColor = const Color(0xFFFF9100);
Color serviceTimeColorLight = const Color(0xFFFF9100).withOpacity(0.25);
Color color3Light = const Color.fromRGBO(126, 0, 203, 0.26);
Color color3Dark = const Color.fromRGBO(65, 0, 109, 1);

const mainColor = Color(0xFF1a263a);
const mainLightColor = Color(0xFFA8A8A8);
const mainTextColor = Colors.white;
const mainLightTextColor = Colors.black;

const mainAnimationDuration = Duration(milliseconds: 200);
const mainDuration = Duration(milliseconds: 250);

// For login and enroll screen theme
const Color loginTheme = Color.fromARGB(255, 23, 102, 116);

Color get getTextColor =>
    Get.isDarkMode ? Colors.white : const Color.fromARGB(255, 107, 107, 107);
Color get getReversedTextColor => Get.isDarkMode ? Colors.black : Colors.white;
