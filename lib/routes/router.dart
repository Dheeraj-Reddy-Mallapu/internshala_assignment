import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:internshala_assignment/pages/error_page.dart';
import 'package:internshala_assignment/routes/routes.dart';

final routerProvider = Provider(
  (ref) {
    return GoRouter(
      errorPageBuilder: (context, state) =>
          const MaterialPage(child: ErrorPage()),
      initialLocation: '/',
      routes: $appRoutes,
    );
  },
);
