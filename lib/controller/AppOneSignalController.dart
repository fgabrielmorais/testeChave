import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'dart:developer';
import 'dart:io';

class AppOneSignalController {


  Future initPlatformState() async {
    try {
      await OneSignal.shared.setAppId('cca19e0a-a1d9-4f4b-8a88-d841c39bc1b6');
      OneSignal.shared
          .promptUserForPushNotificationPermission(fallbackToSettings: false)
          .then((accepted) async {
        print('Cliente aceitou a permissão:  ${accepted}');


      });
    }
    catch (e, s) {
      print(e);
      print(s);
      log("ERRO AO CONFIGURAR ONESIGNAL");
    }
  }
}
