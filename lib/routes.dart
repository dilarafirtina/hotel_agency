import 'package:agency/detail/detail_view.dart';
import 'package:agency/not_found_view.dart';
import 'package:agency/pages/contact/contact.dart';
import 'package:agency/pages/documents/documents_view.dart';
import 'package:agency/pages/home/home_view.dart';
import 'package:agency/pages/login/forget_password_page.dart';
import 'package:agency/pages/login/login_controller.dart';
import 'package:agency/pages/login/login_view.dart';
import 'package:agency/pages/login/password_reset_page.dart';
import 'package:agency/pages/logout/logout_view.dart';
import 'package:agency/pages/bonus/bonus_view.dart';
import 'package:agency/pages/profile/account_view.dart';
import 'package:agency/pages/profile/change_password_page.dart';
import 'package:agency/pages/profile/profile_controller.dart';
import 'package:agency/pages/profile/profile_view.dart';
import 'package:agency/pages/reservations/new_reservation.dart';
import 'package:agency/pages/reservations/new_room_bonus_use.dart';
import 'package:agency/pages/reservations/reservation_controller.dart';
import 'package:agency/pages/sales/sales_view.dart';
import 'package:get/get.dart';
import 'utils/app_routes.dart';

class Routes {
  static const INITIAL = AppRoutes.login;
  static const ERROR = AppRoutes.notFoundPage;
  static final routes = [
    GetPage(
      name: AppRoutes.notFoundPage,
      page: () => const UnknownView(),
    ),
    GetPage(
      name: AppRoutes.sales,
      page: () => SalesView(),
    ),
    GetPage(
      name: AppRoutes.documents,
      page: () => DocumentsView(),
    ),
    GetPage(
      name: AppRoutes.points,
      page: () => PointsView(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
    ),
    GetPage(
      name: AppRoutes.contact,
      page: () => Contact(),
    ),
    GetPage(
      name: AppRoutes.detailPage,
      page: () => DetailView(),
    ),
    GetPage(name: AppRoutes.account, page: () => AccountMenuView()),
    GetPage(
        name: AppRoutes.profile,
        page: () => ProfileView(),
        binding: BindingsBuilder(
            () => {Get.lazyPut<ProfileController>(() => ProfileController())})),
    GetPage(name: AppRoutes.logout, page: () => LogoutView()),
    GetPage(name: AppRoutes.changePassword, page: () => ChangePasswordPage()),
    GetPage(
        name: AppRoutes.login,
        page: () => LoginView(),
        binding: BindingsBuilder(
            () => {Get.lazyPut<LoginController>(() => LoginController())})),
    GetPage(name: AppRoutes.forgotPassword, page: () => ForgetPasswordPage()),
    GetPage(name: AppRoutes.passwordReset, page: () => PasswordResetPage()),
    GetPage(
        name: AppRoutes.new_reservation,
        page: () => NewReservationView(),
        binding: BindingsBuilder(() => {
              Get.lazyPut<ReservationController>(() => ReservationController())
            })),
    GetPage(
        name: AppRoutes.new_bonus,
        page: () => NewBonusUseView(),
        binding: BindingsBuilder(() => {
              Get.lazyPut<ReservationController>(() => ReservationController())
            })),
  ];
}

class IntroLogin2View {}
