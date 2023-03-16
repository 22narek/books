// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:books_app_test/consts/text_style.dart';
import 'package:flutter/material.dart';

import 'package:books_app_test/consts/app_colors.dart';
import 'package:books_app_test/routes/router.gr.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      extendBody: true,
      routes: const [
        HomeRouter(),
        SearchRouter(),
        FavoritRouter(),
        ProfileRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return SizedBox(
            height: 72,
            child: CustomBottomNavBarWidget(tabsRouter: tabsRouter));
      },
    );
  }
}

class CustomBottomNavBarWidget extends StatefulWidget {
  final TabsRouter tabsRouter;
  const CustomBottomNavBarWidget({
    Key? key,
    required this.tabsRouter,
  }) : super(key: key);

  @override
  State<CustomBottomNavBarWidget> createState() =>
      _CustomBottomNavBarWidgetState();
}

class _CustomBottomNavBarWidgetState extends State<CustomBottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    int activeIndex = widget.tabsRouter.activeIndex;

    return BottomNavigationBar(
        currentIndex: activeIndex,
        onTap: widget.tabsRouter.setActiveIndex,
        selectedItemColor: AppColor.black,
        unselectedItemColor: AppColor.lightGrey,
        selectedLabelStyle: AppStyles.navBarlabelTextStyle,
        unselectedLabelStyle: AppStyles.navBarlabelTextStyle,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: activeIndex == 0
                ? const ImageIcon(AssetImage('assets/icons/filHome.png'))
                : const ImageIcon(AssetImage('assets/icons/home.png')),
            label: 'Главная',
          ),
          const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icons/search.png')),
              label: 'Поиск'),
          BottomNavigationBarItem(
              icon: activeIndex == 2
                  ? const ImageIcon(AssetImage('assets/icons/redfav.png'))
                  : const ImageIcon(AssetImage('assets/icons/fav.png')),
              label: 'Избранное'),
          BottomNavigationBarItem(
              icon: activeIndex == 3
                  ? const ImageIcon(AssetImage('assets/icons/filProfile.png'))
                  : const ImageIcon(AssetImage('assets/icons/profile.png')),
              label: 'Профиль'),
        ]);
  }
}
