import 'package:go_router/go_router.dart';
import 'package:otex_app_task/features/Home/presentation/views/home_view.dart';
import 'package:otex_app_task/features/plans/presentation/views/plans_selected_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kPlansView = '/plansView';

  static final router = GoRouter(
    initialLocation: kHomeView,
    routes: [
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kPlansView,
        builder: (context, state) => const PlansSelectedView(),
      ),
    ],
  );
}