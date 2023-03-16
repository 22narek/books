import 'package:auto_route/annotations.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:books_app_test/main_page.dart';
import 'package:books_app_test/screens/favorit_screen.dart';
import 'package:books_app_test/screens/home_screen.dart';
import 'package:books_app_test/screens/profile_screen.dart';
import 'package:books_app_test/screens/search_screen.dart';
import 'package:books_app_test/widgets/modal_bottom_widget.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MainPage, path: '/', children: [
      AutoRoute(
        path: 'home',
        name: 'HomeRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: '', page: HomeScreen),
          AutoRoute(path: 'modalBottom', page: ModalBottomWidget),
        ],
      ),
      AutoRoute(
        path: 'search',
        name: 'SearchRouter',
        page: SearchScreen,
      ),
      AutoRoute(
        path: 'favorit',
        name: 'FavoritRouter',
        page: FavoritScreen,
      ),
      AutoRoute(
        path: 'profile',
        name: 'ProfileRouter',
        page: ProfileScreen,
      ),
    ]),
  ],
)
class $AppRouter {}
