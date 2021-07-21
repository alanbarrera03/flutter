// 3A:73:49:34:23:B4:AE:8D:A2:5B:69:9D:D2:B2:A3:34:E7:DE:F0:4C

import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;
  static StreamController<String> _messageStream =
      new StreamController.broadcast();

  static Stream<String> get messageStream => _messageStream.stream;

  static Future _backgroundHandler(RemoteMessage message) async {
    // print('onBackground Handler ${message.messageId}');
    _messageStream.add(message.data['producto'] ?? 'No data');
  }

  static Future _onMessageHandler(RemoteMessage message) async {
    // print('onBackground Handler ${message.messageId}');
    _messageStream.add(message.data['producto'] ?? 'No data');
  }

  static Future _onMessageOpenApp(RemoteMessage message) async {
    // print('onBackground Handler ${message.messageId}');
    _messageStream.add(message.data['producto'] ?? 'No data');
  }

  static Future initializeApp() async {
    // Push Notifications

    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print("Token: $token");

    //Handlers

    FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
    FirebaseMessaging.onMessage.listen(_onMessageHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenApp);

    // Local Notifications
  }

  static closeStreams() {
    _messageStream.close();
  }
}
