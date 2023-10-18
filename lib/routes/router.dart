
import 'package:flutter/material.dart';
import 'package:food_recipe_app/features/home/presentation/screens/home.dart';
import 'package:food_recipe_app/features/onboarding/presentation/screens/onboarding.dart';
class Routers {
  static const String home = '/Home';
  static const String onBoarding = '/OnBoarding';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        builder: (context) => route(settings),
        settings: RouteSettings(name: settings.name),
    );
  }

  static route(RouteSettings settings) {
    Widget routingWidget = Container();
    switch (settings.name) {
      case onBoarding:
        routingWidget = const OnBoarding();
        break;
      case home:
        routingWidget = const Home();
      default:
        routingWidget = Container();
    }

    return routingWidget;
  }

  // static route(RouteSettings settings) {
  //   Widget routingWidget ;
  //   switch (settings.name) {
  //     case onBoarding:
  //       return HomeView(data: settings.arguments??'No data');
  //     case home:
  //       return HomeView(data: settings.arguments??'No data');
  //     case login:
  //       return LoginView();
  //     case register:
  //       return RegisterView(data: settings.arguments);
  //     case store:
  //       return StoreView(settings.arguments);
  //     case report:
  //       return ReportView(settings.arguments);
  //     case gateIn:
  //       return GateInView(settings.arguments);
  //     case gateOut:
  //       return GateOutView(settings.arguments);
  //     case editProfile:
  //       return EditProfileView(settings.arguments);
  //     case changePassword:
  //       return ChangePasswordView(settings.arguments);
  //     case listTransportCompany:
  //       return ListTransportCompanyView(settings.arguments);
  //     case editAddTransportCompany:
  //       return EditAddTransportCompanyView(settings.arguments);
  //     case listBillCompany:
  //       return ListBillCompanyView(settings.arguments);
  //     case editAddBillCompany:
  //       return EditAddBillCompanyView(settings.arguments);
  //     case storeItem:
  //       return BlocProvider(
  //         create: (context) => FaceRecognitionBloc(),
  //           child: StoreItemDetailView(settings.arguments));
  //     case storeEditItem:
  //       return StoreEditItemView(settings.arguments);
  //     case enterMail:
  //       return ForgotPassEnterEmailView(settings.arguments);
  //     case enterCode:
  //       return ForgotPassEnterCodeView(settings.arguments);
  //     case enterNewPass:
  //       return EnterNewPass(settings.arguments);
  //     case historyLogin:
  //       return HistoryLoginView(settings.arguments);
  //     case paymentHistory:
  //       return PaymentHistoryView(settings.arguments);
  //     case manageAccount:
  //       return ManageAccountView(settings.arguments);
  //     case settingsAuthorization:
  //       return SettingAuthorizationView(settings.arguments);
  //     case socialLink:
  //       return LinkSocialMediaView();
  //     case contact:
  //       return ContactView();
  //     case manageAccountProfile:
  //       return ManageAccountProfileView(settings.arguments);
  //     case confirmPassword:
  //       return ConfirmPasswordView(settings.arguments);
  //     case userGuide:
  //       return UserGuideView(settings.arguments);
  //     case userGuideLogin:
  //       return UserGuideLoginView(settings.arguments);
  //     case historyPay:
  //       return HistoryPayView(settings.arguments);
  //     case homeConfig:
  //       return HomeConfigView();
  //     case notification:
  //       return NotificationView();
  //     case scanView:
  //       return QRScanView();
  //     case kpiDriverView:
  //       return KPIDriverView(settings.arguments);
  //     case historyPromoteView:
  //       return HistoryPromoteView(settings.arguments);
  //     case registerTypeAccountView:
  //       return RegisterTypeAccountView();
  //     case faceCaptureView:
  //       return Container();
  //     case historyGiftReceive:
  //       return HistoryGiftView(settings.arguments);
  //     case faceRegisterViewNew:
  //       return FaceRegisterViewNew(settings.arguments);
  //     case quanLyNhaXeView:
  //       return QLNhaXeView(settings.arguments);
  //     case vehicleDetailView:
  //       return VehicleDetailView(settings.arguments);
  //     case quanLyNhanSuView:
  //       return QuanLyNhanSuView(settings.arguments);
  //     case nhanSuDetailView:
  //       return NhanSuDetailView(settings.arguments);
  //     case addNhanSuView:
  //       return AddNhanSuView(settings.arguments);
  //     case addVehicleNhaXeView:
  //       return AddVehicleNhaXeView(settings.arguments);
  //     case historyScoreView:
  //       return HistoryScoreView(settings.arguments);
  //     case upgradeNhaXeView:
  //       return UpgradeNhaXeView(settings.arguments);
  //     case settingRandomBankView:
  //       return SettingRandomBankView();
  //     case gioiThieuCTView:
  //       return GioiThieuCTView();
  //     case donChoXacNhanView:
  //       return DonChoXacNhanView(settings.arguments);
  //     case approveDriverView:
  //       return ApproveDriverView(settings.arguments);
  //     case userGuideChooseView:
  //       return UserGuideChooseView();
  //     case userGuideMenuView:
  //       return UserGuideMenuView(settings.arguments);
  //     case userGuideDetailView:
  //       return UserGuideDetailView(settings.arguments as UserGuide);
  //     case cachTichDiemView:
  //       return CachTichDiemView();
  //     case ltaIntroView:
  //       return LTAIntroView();
  //     case ltaMenuDepotView:
  //       GetXBinding(key: BindingConstant.ltaMenuDepotView);
  //       Get.lazyPut(
  //             () => LTAMenuDepotController(),
  //       );
  //       return LTAMenuDepotViewV2();
  //     case comingSoonView:
  //       return ComingSoonView(settings.arguments);
  //     case ltaMenuDepotAccount:
  //       return LTAMenuDepotAccount();
  //     case ltaLanguageSettingView:
  //       return LanguageSettingView(settings.arguments);
  //     case ltaIntroAppView:
  //       return LTAIntroAppView();
  //     case ltaHoTroView:
  //       return LTAHotroView();
  //     case ltaDanhSachLienHeView:
  //       return LTAHotroDanhsachlienheView();
  //     case ltaRewardManagementView:
  //       return LTARewardManagementView(settings.arguments);
  //     case ltaPDFView:
  //       return LTAGuidePDFView();
  //     case ltaUpdateFaceView:
  //       return LTAUpdateFaceView();
  //     case ltaChangeNhaXeView:
  //       return LTAChangeNhaXeView();
  //     case ltaUpdateBankProfileInfoView:
  //       return LTAUpdateBankProfileInfoView();
  //     default:
  //       return ComingSoonView(settings.arguments);
  //   }
  // }
}