import 'package:books_app_test/consts/text_style.dart';
import 'package:flutter/material.dart';

class SectionTextWidget extends StatelessWidget {
  final String title;
  const SectionTextWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: AppStyles.sectionTextStyle);
  }
}
