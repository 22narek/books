// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:books_app_test/consts/app_colors.dart';
import 'package:books_app_test/consts/text_style.dart';
import 'package:books_app_test/widgets/section_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:books_app_test/bloc/books_block.dart';
import 'package:books_app_test/bloc/books_event.dart';
import 'package:books_app_test/bloc/books_state.dart';
import 'package:books_app_test/widgets/modal_bottom_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Box _favoritesBox;
  bool issaved = false;

  Future<void> readJson() async {}

  @override
  void initState() {
    super.initState();
    _openFavoritesBox();
    readJson();
  }

  Future<void> _openFavoritesBox() async {
    _favoritesBox = await Hive.openBox('favorites');
  }

  @override
  void dispose() {
    _favoritesBox.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final booksBloc = context.read<BooksBloc>();
    return BlocBuilder<BooksBloc, BooksState>(
      bloc: booksBloc,
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 70.0, right: 20.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SectionTextWidget(
                      title: 'Рекомендации',
                    ),
                    const Expanded(child: SizedBox()),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Все книги',
                        style: AppStyles.mulishFontTextStyle,
                      ),
                    )
                  ],
                ),
                state.all.isNotEmpty
                    ? ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: state.all.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Card(
                              elevation: 0,
                              child: GestureDetector(
                                onTap: () {
                                  booksBloc.add(
                                    OnChangeEvent(
                                      bookTitle: state.all[index].title!,
                                      bookAuthor: state.all[index].author!,
                                      bookDate: state.all[index].year!,
                                      booksImagePat:
                                          '${state.all[index].imageUrl}',
                                      booksDescription:
                                          state.all[index].description!,
                                    ),
                                  );
                                  showModalBottomSheet(
                                    context: context,
                                    useRootNavigator: true,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                    ),
                                    builder: (BuildContext context) {
                                      return const ModalBottomWidget();
                                    },
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.containerBackground,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.only(
                                      left: 16, top: 16, right: 10, bottom: 16),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 48,
                                        height: 78,
                                        child: Image.network(
                                            '${state.all[index].imageUrl}'),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                state.all[index].title!,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                style: AppStyles.titleTextStyle,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 4),
                                                child: Text(
                                                  state.all[index].year!,
                                                  style:
                                                      AppStyles.yearTextStyle,
                                                ),
                                              ),
                                              Text(
                                                state.all[index].author!,
                                                style:
                                                    AppStyles.authorTextStyle,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () async {
                                          booksBloc.add(OnFavoritChangeEvent(
                                              item: state.all[index]));
                                        },
                                        style: TextButton.styleFrom(
                                          padding:
                                              const EdgeInsets.only(top: 3),
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          alignment: Alignment.topCenter,
                                        ),
                                        child: Container(
                                          child: state.all[index].isFavoite!
                                              ? Image.asset(
                                                  'assets/icons/redfav.png',
                                                )
                                              : Image.asset(
                                                  'assets/icons/fav.png',
                                                ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    : Container(),
              ],
            ),
          ),
        );
      },
    );
  }
}
