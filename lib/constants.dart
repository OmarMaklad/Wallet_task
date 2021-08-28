import 'package:flutter/material.dart';

const DefaultErrorMessage = 'حدث خطأ اثناء تنفيذ طلبكم!';

String getAsset(String imageName) => 'images/$imageName.png';

// void showDefaultErrorMessage ({bool primaryColor = true})=> showToast(DefaultErrorMessage,primaryColor: primaryColor);

const Color kPrimaryColor = Color(0xFFE56D00);
const Color kAccentColor = Color(0xFFF77E78);
const Color kTextColor = Color(0xFF606060);
const Color kGryColor = Color(0xFFD9D8D8);
const Color kBackgroundColor = Color(0xFFFAFAFA);
const Color kCardColorDarkMode = Color(0xFF4E4848);
const Color kGreenColor = Color(0xFF12E25C);
const Color kBColor = Color(0xFF707070);
const Color kBlackColor = Color(0xFF010101);
const Color kRateColor = Color(0xFFE5C700);
// #4E4848 cards
// #150517 bg
const Color kDimGrayColor = Color(0xFF6D6D6D);
ThemeData lightTheme = ThemeData(
  platform: TargetPlatform.iOS,
  primaryColor: kPrimaryColor,
  backgroundColor: kBackgroundColor,
  accentColor: kAccentColor,
  brightness: Brightness.light,
  canvasColor: Colors.white.withOpacity(0.96),
  fontFamily: 'dinnextl',
  appBarTheme: AppBarTheme(
    backgroundColor: kBackgroundColor,
    titleTextStyle: TextStyle(color: kBColor,fontFamily: "dinnextl bold",fontSize: 18),
    iconTheme: IconThemeData(color: kPrimaryColor),
  ),

  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(kDimGrayColor)
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  platform: TargetPlatform.iOS,
  primaryColor: kPrimaryColor,
  accentColor: kAccentColor,
  brightness: Brightness.dark,
  backgroundColor: Color(0xFF150517),
  // canvasColor: Colors.black87,
  fontFamily: 'dinnextl',
  appBarTheme: AppBarTheme(
    titleTextStyle: TextStyle(color: Colors.white,  fontFamily: "dinnextl bold",fontSize: 16),
    iconTheme: IconThemeData(color: kPrimaryColor),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(kDimGrayColor)
    ),
  ),
);


/*
ThemeData(
              platform: TargetPlatform.iOS,
              primaryColor: kPrimaryColor,
              accentColor: kAccentColor,

            backgroundColor: Colors.white
          )
 */

final containerDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,
    border: Border.all(color: Colors.black54, width: 0.2));




