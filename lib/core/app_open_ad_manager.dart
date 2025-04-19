import 'package:google_mobile_ads/google_mobile_ads.dart';

class AppOpenAdManager {
  static final AppOpenAdManager _instance = AppOpenAdManager._internal();
  factory AppOpenAdManager() => _instance;
  AppOpenAdManager._internal();

  AppOpenAd? _appOpenAd;
  bool _isAdAvailable = false;

  // استخدم الإعلان الحقيقي هنا
  // final String adUnitId = 'ca-app-pub-7977077663821325/4506072820';
  final String adUnitId = 'ca-app-pub-7977077663821325/7322849997';


  void loadAd() {
    print('📥 [AppOpenAdManager] Trying to load App Open Ad with ID: $adUnitId');

    AppOpenAd.load(
      adUnitId: adUnitId,
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          print('✅ [AppOpenAdManager] App Open Ad loaded successfully');
          _appOpenAd = ad;
          _isAdAvailable = true;
        },
        onAdFailedToLoad: (LoadAdError error) {
          print('❌ [AppOpenAdManager] Failed to load App Open Ad');
          print('🧠 Error code: ${error.code}');
          print('📛 Error domain: ${error.domain}');
          print('📄 Error message: ${error.message}');
          _isAdAvailable = false;
        },
      ),
      orientation: AppOpenAd.orientationPortrait,
    );
  }

  void showAdIfAvailable() {
    if (_isAdAvailable && _appOpenAd != null) {
      print('🚀 [AppOpenAdManager] Showing App Open Ad...');
      _appOpenAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          print('🧹 [AppOpenAdManager] Ad dismissed. Reloading...');
          _isAdAvailable = false;
          loadAd();
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          print('❌ [AppOpenAdManager] Failed to show App Open Ad: $error');
          _isAdAvailable = false;
        },
      );
      _appOpenAd!.show();
    } else {
      print('⚠️ [AppOpenAdManager] No ad available to show. Attempting to load one...');
      loadAd();
    }
  }
}
