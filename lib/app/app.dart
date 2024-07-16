import 'package:space_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:space_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:space_app/ui/views/home/home_view.dart';
import 'package:space_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:space_app/ui/views/splash_screen/splash_screen_view.dart';
import 'package:space_app/ui/views/event_page/event_page_view.dart';
import 'package:space_app/ui/views/quizes_page/quizes_page_view.dart';
import 'package:space_app/ui/views/gallery_page/gallery_page_view.dart';
import 'package:space_app/ui/views/sollar_system_page/sollar_system_page_view.dart';
import 'package:space_app/services/nasa_gallery_api_service.dart';
import 'package:space_app/services/nasa_events_api_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: SplashScreenView),
    MaterialRoute(page: EventPageView),
    MaterialRoute(page: QuizesPageView),
    MaterialRoute(page: GalleryPageView),
    MaterialRoute(page: SollarSystemPageView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: NasaGalleryApiService),
    LazySingleton(classType: NasaEventsApiService),
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
