// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:books_app_test/consts/app_colors.dart';
import 'package:books_app_test/consts/text_style.dart';
import 'package:flutter/material.dart';

import 'package:books_app_test/widgets/section_text_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 88, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionTextWidget(title: 'Профиль'),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset('assets/pictures/ava.png'),
                ),
                const SizedBox(width: 24),
                const Text(
                    'Введите своё имя и при\nделании добавьте фото\nпрофиля',
                    style: AppStyles.aboutTextStyle)
              ],
            ),
            const SizedBox(height: 24),
            const Column(
              children: [
                TextFieldWidget(labelName: 'Имя'),
                SizedBox(height: 12),
                TextFieldWidget(labelName: 'Фамилия'),
                SizedBox(height: 12),
                TextFieldWidget(labelName: 'Email'),
                SizedBox(height: 12),
                TextFieldWidget(labelName: 'Телефон'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final String labelName;
  const TextFieldWidget({
    Key? key,
    required this.labelName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextField(
        style: AppStyles.inputTextStyle,
        decoration: InputDecoration(
          labelText: labelName,
          labelStyle: AppStyles.labelTextStyle,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColor.containerBackground,
            ),
          ),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AppColor.white),
          ),
        ),
      ),
    );
  }
}
