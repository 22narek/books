// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i9;

import '../main_page.dart' as _i1;
import '../screens/favorit_screen.dart' as _i4;
import '../screens/home_screen.dart' as _i6;
import '../screens/profile_screen.dart' as _i5;
import '../screens/search_screen.dart' as _i3;
import '../widgets/modal_bottom_widget.dart' as _i7;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SearchRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SearchScreen(),
      );
    },
    FavoritRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.FavoritScreen(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ProfileScreen(),
      );
    },
    HomeScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
      );
    },
    ModalBottomWidget.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ModalBottomWidget(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          MainRoute.name,
          path: '/',
          children: [
            _i8.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: MainRoute.name,
              children: [
                _i8.RouteConfig(
                  HomeScreen.name,
                  path: '',
                  parent: HomeRouter.name,
                ),
                _i8.RouteConfig(
                  ModalBottomWidget.name,
                  path: 'modalBottom',
                  parent: HomeRouter.name,
                ),
              ],
            ),
            _i8.RouteConfig(
              SearchRouter.name,
              path: 'search',
              parent: MainRoute.name,
            ),
            _i8.RouteConfig(
              FavoritRouter.name,
              path: 'favorit',
              parent: MainRoute.name,
            ),
            _i8.RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: MainRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i8.PageRouteInfo<void> {
  const HomeRouter({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i3.SearchScreen]
class SearchRouter extends _i8.PageRouteInfo<void> {
  const SearchRouter()
      : super(
          SearchRouter.name,
          path: 'search',
        );

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i4.FavoritScreen]
class FavoritRouter extends _i8.PageRouteInfo<void> {
  const FavoritRouter()
      : super(
          FavoritRouter.name,
          path: 'favorit',
        );

  static const String name = 'FavoritRouter';
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileRouter extends _i8.PageRouteInfo<void> {
  const ProfileRouter()
      : super(
          ProfileRouter.name,
          path: 'profile',
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i6.HomeScreen]
class HomeScreen extends _i8.PageRouteInfo<void> {
  const HomeScreen()
      : super(
          HomeScreen.name,
          path: '',
        );

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i7.ModalBottomWidget]
class ModalBottomWidget extends _i8.PageRouteInfo<void> {
  const ModalBottomWidget()
      : super(
          ModalBottomWidget.name,
          path: 'modalBottom',
        );

  static const String name = 'ModalBottomWidget';
}
