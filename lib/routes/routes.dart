import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:internshala_assignment/pages/filters_page.dart';
import 'package:internshala_assignment/pages/search_page/search_page.dart';

part 'routes.g.dart';

@TypedGoRoute<SearchRoute>(
  path: '/',
  routes: [
    TypedGoRoute<FiltersRoute>(path: 'filters'),
  ],
)
class SearchRoute extends GoRouteData {
  const SearchRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SearchPage();
  }
}

class FiltersRoute extends GoRouteData {
  const FiltersRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FiltersPage();
  }
}
