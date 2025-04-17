import 'package:google_mobile_ads/google_mobile_ads.dart';

class AppOpenAdManager {
  static final AppOpenAdManager _instance = AppOpenAdManager._internal();
  factory AppOpenAdManager() => _instance;
  AppOpenAdManager._internal();

  AppOpenAd? _appOpenAd;
  bool _isAdAvailable = false;

  final String adUnitId = 'ca-app-pub-7977077663821325/4506072820'; // ← هذا هو الإعلان الحقيقي الخاص بك

  void loadAd() {
    AppOpenAd.load(
      adUnitId: adUnitId,
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          _appOpenAd = ad;
          _isAdAvailable = true;
        },
        onAdFailedToLoad: (error) {
          _isAdAvailable = false;
        },
      ),
      orientation: AppOpenAd.orientationPortrait,
    );
  }

  void showAdIfAvailable() {
    if (_isAdAvailable && _appOpenAd != null) {
      _appOpenAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          _isAdAvailable = false;
          loadAd(); // إعادة التحميل بعد العرض
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          _isAdAvailable = false;
        },
      );
      _appOpenAd!.show();
    } else {
      loadAd(); // في حال لم يكن هناك إعلان، نحاول تحميل واحد جديد
    }
  }
}
