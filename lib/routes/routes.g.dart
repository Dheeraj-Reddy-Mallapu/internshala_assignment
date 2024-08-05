// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $searchRoute,
    ];

RouteBase get $searchRoute => GoRouteData.$route(
      path: '/',
      factory: $SearchRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'filters',
          factory: $FiltersRouteExtension._fromState,
        ),
      ],
    );

extension $SearchRouteExtension on SearchRoute {
  static SearchRoute _fromState(GoRouterState state) => const SearchRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FiltersRouteExtension on FiltersRoute {
  static FiltersRoute _fromState(GoRouterState state) => const FiltersRoute();

  String get location => GoRouteData.$location(
        '/filters',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
