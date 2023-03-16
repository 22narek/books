// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:books_app_test/consts/app_colors.dart';
import 'package:books_app_test/consts/text_style.dart';
import 'package:flutter/material.dart';

import 'package:books_app_test/widgets/section_text_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:books_app_test/bloc/books_block.dart';
import 'package:books_app_test/bloc/books_state.dart';

class ModalBottomWidget extends StatelessWidget {
  const ModalBottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksBloc, BooksState>(builder: (context, state) {
      return Container(
        height: 330,
        padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SectionTextWidget(title: 'Выбор редакции'),
                const Expanded(child: SizedBox()),
                TextButton(
                  onPressed: () {
                    AutoRouter.of(context).pop();
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    child: Icon(
                      Icons.close,
                      size: 30,
                      color: AppColor.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  state.bookImageUrl,
                  width: 100,
                  height: 160,
                ),
                const SizedBox(width: 12),
                SizedBox(
                  width: 240,
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.bookTitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppStyles.titleTextStyle,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            state.bookDate,
                            style: AppStyles.yearTextStyle,
                          ),
                        ),
                        Text(
                          state.bookAuthor,
                          style: AppStyles.authorTextStyle,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          state.bookDescription,
                          maxLines: 5,
                          style: AppStyles.descriptionTextStyle,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                style:
                    ElevatedButton.styleFrom(backgroundColor: AppColor.black),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/fav.png',
                      width: 21,
                      height: 18,
                      color: AppColor.white,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      'Добавить в избранное',
                      style: AppStyles.addFavTextStyle,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      );
    });
  }
}
