import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:guitar_chords/app.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  final fcmToken = FirebaseMessaging.instance.getToken();
  print(await fcmToken);
  FirebaseMessaging.instance.onTokenRefresh.listen((fcmToken) {
    print(fcmToken);
  }).onError((err) {
    print(err);
  });
  await FirebaseMessaging.instance.setAutoInitEnabled(true);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
    ),
  );

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('launch_background');

  const IOSInitializationSettings initializationSettingsIOS =
      IOSInitializationSettings(
    requestSoundPermission: false,
    requestBadgePermission: false,
    requestAlertPermission: false,
    // onDidReceiveLocalNotification: onDidReceiveLocalNotification,
  );
  const InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
  flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onSelectNotification: ((payload) => {}));

  const AndroidNotificationDetails androidNotificationDetails =
      AndroidNotificationDetails(
    "1000", //Required for Android 8.0 or after
    "Nofitication", //Required for Android 8.0 or after
    channelDescription: "Nofitication", //Required for Android 8.0 or after
  );

  const IOSNotificationDetails iosNotificationDetails =
      IOSNotificationDetails();

  const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidNotificationDetails, iOS: iosNotificationDetails);

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      flutterLocalNotificationsPlugin.show(
        0,
        message.notification!.title,
        message.notification!.body,
        platformChannelSpecifics,
        payload: 'Notification Payload',
      );
    }
  });

  runApp(
    const App(),
  );
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('launch_background');

  const IOSInitializationSettings initializationSettingsIOS =
      IOSInitializationSettings(
    requestSoundPermission: false,
    requestBadgePermission: false,
    requestAlertPermission: false,
    // onDidReceiveLocalNotification: onDidReceiveLocalNotification,
  );
  const InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
  flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onSelectNotification: ((payload) => {}));

  const AndroidNotificationDetails androidNotificationDetails =
      AndroidNotificationDetails(
    "1000", //Required for Android 8.0 or after
    "Nofitication", //Required for Android 8.0 or after
    channelDescription: "Nofitication", //Required for Android 8.0 or after
  );

  const IOSNotificationDetails iosNotificationDetails =
      IOSNotificationDetails();

  const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidNotificationDetails, iOS: iosNotificationDetails);

  flutterLocalNotificationsPlugin.show(
    0,
    message.notification!.title,
    message.notification!.body,
    platformChannelSpecifics,
    payload: 'Notification Payload',
  );
}
