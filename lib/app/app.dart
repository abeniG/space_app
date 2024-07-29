import 'package:space_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:space_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:space_app/ui/views/home/home_view.dart';
import 'package:space_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:space_app/ui/views/splash_screen/splash_screen_view.dart';
import 'package:space_app/ui/views/event/event_view.dart';
import 'package:space_app/ui/views/quizes/quizes_view.dart';
import 'package:space_app/ui/views/gallery/gallery_view.dart';
import 'package:space_app/ui/views/sollar_system/sollar_system_view.dart';
import 'package:space_app/ui/views/full_screen/full_screen_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: SplashScreenView),
    MaterialRoute(page: EventView),
    MaterialRoute(page: QuizesPageView),
    MaterialRoute(page: GalleryView),
    MaterialRoute(page: SollarSystemView),
    MaterialRoute(page: FullScreenView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
