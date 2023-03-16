import 'package:books_app_test/consts/app_colors.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static const TextStyle sectionTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontFamily: "Montserrat",
  );

  static const TextStyle mulishFontTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColor.lightGrey,
    fontFamily: 'Mulish',
  );

  static const TextStyle titleTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: "Montserrat",
    height: 1.5,
    overflow: TextOverflow.ellipsis,
    color: AppColor.black,
  );

  static const TextStyle yearTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: "Montserrat",
    color: AppColor.lightGrey,
  );

  static const TextStyle authorTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    fontFamily: "Montserrat",
    color: AppColor.grey,
  );

  static const TextStyle descriptionTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    overflow: TextOverflow.ellipsis,
    height: 1.5,
    fontFamily: "Montserrat",
    color: AppColor.black,
  );

  static const TextStyle addFavTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: "Montserrat",
    color: AppColor.white,
  );

  static const TextStyle aboutTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColor.lightGrey,
    height: 1.7,
    fontFamily: "Montserrat",
  );

  static const TextStyle inputTextStyle = TextStyle(
    color: AppColor.black,
    fontFamily: "Montserrat",
    fontSize: 16,
  );

  static const TextStyle labelTextStyle = TextStyle(
    color: AppColor.lightGrey,
    fontFamily: "Montserrat",
    height: 4,
  );

  static const TextStyle navBarlabelTextStyle = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    fontFamily: 'Montserrat',
  );
}
