import 'package:go_router/go_router.dart';
import 'package:module/presentation/create_project/create_project_screen.dart';
import 'package:module/presentation/home/home_screen.dart';
import 'package:module/utils/routes/routes.dart';

class RouterFactory {
  static GoRouter routes() => GoRouter(
        routes: [
          GoRoute(
            path: Routes.toHome,
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: Routes.toCreateProjectScreen,
            builder: (context, state) => const CreateProjectScreen(),
          ),
        ],
      );
}
