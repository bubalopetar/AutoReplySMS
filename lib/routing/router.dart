import 'package:app/screens/screens.dart';
import 'package:go_router/go_router.dart';

var routes = [
  GoRoute(
      path: AutoRepliesListView.routePath,
      name: AutoRepliesListView.routeName,
      builder: (context, state) => AutoRepliesListView(),
      routes: [
        GoRoute(
          path: AddAutoReply.routePath,
          name: AddAutoReply.routeName,
          builder: (context, state) => const AddAutoReply(),
        )
      ]),
];
var router = GoRouter(
  routes: routes,
  initialLocation: '/',
);
