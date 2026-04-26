import 'package:go_router/go_router.dart';
import 'package:pub/src/presentation/pages/package_detail_page.dart';
import 'package:pub/src/presentation/pages/packages_page.dart';

enum AppRoute { packages, packageDetail }

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.packages.name,
      builder: (context, state) => const PackagesPage(),
    ),
    GoRoute(
      path: '/packages/:name',
      name: AppRoute.packageDetail.name,
      builder: (context, state) {
        final packageName = state.pathParameters['name']!;
        return PackageDetailPage(packageName: packageName);
      },
    ),
  ],
);
