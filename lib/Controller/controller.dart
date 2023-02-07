import 'package:flutter/services.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

class PurchaseApi {
  static const apikey = "";
  static Future init() async {
    await Purchases.setLogLevel(LogLevel.debug);
    PurchasesConfiguration(apikey);
  }

  static Future<List<Offering>> fetchoffers() async {
    try {
      final offering = await Purchases.getOfferings();
      final current = offering.current;
      return current == null ? [] : [current];
    } on PlatformException catch (_) {
      return [];
    }
  }
}
