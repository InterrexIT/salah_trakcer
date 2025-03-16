import 'package:get/get.dart';

import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/login_view.dart';
import '../modules/azan_reminder/bindings/azan_reminder_binding.dart';
import '../modules/azan_reminder/views/azan_reminder_view.dart';
import '../modules/dua_collection/bindings/dua_collection_binding.dart';
import '../modules/dua_collection/views/dua_collection_view.dart';
import '../modules/dua_collection/views/dua_view.dart';
import '../modules/dua_collection/views/morning_dua_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboard/bindings/onboard_binding.dart';
import '../modules/onboard/views/onboard_view.dart';
import '../modules/onboard/views/splash_view.dart';
import '../modules/qibla/bindings/qibla_binding.dart';
import '../modules/qibla/views/qibla_view.dart';
import '../modules/ramadan_calender/bindings/ramadan_calender_binding.dart';
import '../modules/ramadan_calender/views/ramadan_calender_view.dart';
import '../modules/salat_track/bindings/salat_track_binding.dart';
import '../modules/salat_track/views/salat_track_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARD,
      page: () => OnboardView(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: _Paths.QIBLA,
      page: () => QiblaView(),
      binding: QiblaBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.SALAT_TRACK,
      page: () => const SalatTrackView(),
      binding: SalatTrackBinding(),
    ),
    GetPage(
      name: _Paths.DUA_COLLECTION,
      page: () => const DuaCollectionView(),
      binding: DuaCollectionBinding(),
    ),
    GetPage(
      name: _Paths.MORNING_DUA,
      page: () => MorningDuaView(),
      binding: DuaCollectionBinding(),
    ),
    GetPage(
      name: _Paths.DUA,
      page: () => DuaView(),
      binding: DuaCollectionBinding(),
    ),
    GetPage(
      name: _Paths.AZAN_REMINDER,
      page: () => AzanReminderView(),
      binding: AzanReminderBinding(),
    ),
    GetPage(
      name: _Paths.RAMADAN_CALENDER,
      page: () => const RamadanCalenderView(),
      binding: RamadanCalenderBinding(),
    ),
  ];
}
