// import 'dart:developer';

// import 'package:awesome_notifications/awesome_notifications.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';

// import 'channel_utils.dart';

// class NotificationServices {
//   static final awesome = AwesomeNotifications();
//   static ReceivedAction? initialAction;
//   static init() async {
//     awesome.initialize(
//       // set the icon to null if you want to use the default app icon
//       null,
//       notificationChannels,
//       // Channel groups are only visual and are not required
//       debug: false,
//     );
//     await FirebaseMessaging.instance
//         .setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );
//     // Get initial notification action is optional
//     initialAction = await AwesomeNotifications()
//         .getInitialNotificationAction(removeFromActionEvents: false);

//     awesome.isNotificationAllowed().then((value) {
//       if (!value) {
//         awesome.requestPermissionToSendNotifications();
//       }

//       awesome.setListeners(
//         onActionReceivedMethod: onActionReceivedMethod,
//         onNotificationCreatedMethod: onNotificationCreatedMethod,
//         onNotificationDisplayedMethod: onNotificationDisplayedMethod,
//         onDismissActionReceivedMethod: onDismissActionReceivedMethod,
//       );

//       // FirebaseMessaging.onBackgroundMessage(backgroundhandler);
//       FirebaseMessaging.onMessage.listen((event) {
//         switch (event.data["type"].toLowerCase()) {
//           case "service_status":
//             // final ChatController chatController =
//             //     Get.put(ChatController(), permanent: false);
//             // chatController.setwaitingOff(true);
//             break;
//           case "chat_ended":
//             // Get.offAll(HomeNav(index: 0));
//             break;
//           case "":
//             NotificationLayout notificationLayout = NotificationLayout.Default;
//             if (event.notification!.android!.imageUrl != null) {
//               notificationLayout = NotificationLayout.BigPicture;
//             }
//             if (event.data["type"] != "call") {
//               showNotification(
//                 id: 0,
//                 title: event.notification!.title ?? "",
//                 body: event.notification!.body ?? "",
//                 image: event.notification!.android!.imageUrl,
//                 notificationLayout: notificationLayout,
//               );
//             }
//             break;
//         }
//       });
//     });
//     getFCM();
//   }

//   static Future<void> onActionReceivedMethod(
//       ReceivedAction receivedAction) async {
//     log("action ====");
//     // await showNotification(
//     //   id: 0,
//     //   title: receivedAction.title ?? "",
//     //   body: receivedAction.body ?? "",
//     // );
//   }

//   static Future<void> onNotificationCreatedMethod(
//       ReceivedNotification receivedAction) async {
//     print(2);
//   }

//   static Future<void> onNotificationDisplayedMethod(
//       ReceivedNotification receivedAction) async {
//     print(3);
//   }

//   static Future<void> onDismissActionReceivedMethod(
//       ReceivedAction receivedAction) async {
//     print(4);
//   }

//   static Future<void> showNotification({
//     required int id,
//     required final String title,
//     required final String body,
//     final String? summary,
//     final Map<String, String>? payload,
//     final ActionType actionType = ActionType.Default,
//     final NotificationLayout notificationLayout = NotificationLayout.Default,
//     final NotificationCategory? category,
//     final String? image,
//     final List<NotificationActionButton>? actionButtons,
//     final bool scheduled = false,
//     final int? interval,
//   }) async {
//     assert(!scheduled || (scheduled && interval != null));

//     awesome.createNotification(
//       content: NotificationContent(
//         id: id,
//         channelKey: channelKey,
//         title: title,
//         body: body,
//         actionType: actionType,
//         notificationLayout: notificationLayout,
//         category: category,
//         bigPicture: image,
//         payload: payload,
//         summary: summary,
//         // customSound: "resource://assets/sound/notification.mp3",
//       ),
//       actionButtons: actionButtons,
//       schedule: scheduled
//           ? NotificationInterval(
//               interval: interval,
//               timeZone: AwesomeNotifications.localTimeZoneIdentifier,
//               preciseAlarm: true,
//             )
//           : null,
//     );
//   }

//   static Future<String> getFCM() async {
//     FirebaseMessaging messaging = FirebaseMessaging.instance;

// // use the returned token to send messages to users from your custom server
//     String token = await messaging.getToken() ?? "";
//     log("FCM token:  $token");
//     return token;
//   }

//   //background notification handler
//   static Future<void> backgroundhandler(RemoteMessage remoteMessage) async {
//     showNotification(
//       id: 0,
//       title: remoteMessage.notification!.title ?? "",
//       body: remoteMessage.notification!.body ?? "",
//     );
//   }
// }
import 'dart:convert';
import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';

Future<void> handlerbackground(RemoteMessage message) async {
  log(" ${message.data}");
}

// class NotificationServices {
//   final _firebaseMassaging = FirebaseMessaging.instance;
//   final AndroidNotificationChannel channel = const AndroidNotificationChannel(
//     'high_importance_channel', // id
//     'High Importance Notifications', // title
//     description:
//         'This channel is used for important notifications.', // description
//     importance: Importance.max,
//     // sound: RawResourceAndroidNotificationSound("notification"),
//   );
//   Future<void> initNotifications() async {
//     /// for ios forground notication
//     await FirebaseMessaging.instance
//         .setForegroundNotificationPresentationOptions(
//       alert: true, // Required to display a heads up notification
//       badge: true,
//       sound: true,
//     );

//     ///end
//     ///for android notification

//     final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//         FlutterLocalNotificationsPlugin();

//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channel);
//     await _firebaseMassaging.requestPermission(
//         alert: true, announcement: true, badge: true, sound: true);
//     getFCM();
//     FirebaseMessaging.onBackgroundMessage(handlerbackground);
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       RemoteNotification notification = message.notification!;
//       AndroidNotification? android = message.notification?.android;

//       // If `onMessage` is triggered with a notification, construct our own
//       // local notification to show to users using the created channel.
//       if (notification != null && android != null) {
//         flutterLocalNotificationsPlugin.show(
//             notification.hashCode,
//             notification.title,
//             notification.body,
//             NotificationDetails(
//               android: AndroidNotificationDetails(
//                 channel.id, channel.name,
//                 channelDescription: channel.description,
//                 icon: android.smallIcon,
//                 playSound: true,
//                 // sound: RawResourceAndroidNotificationSound("notification")
//                 // other properties...
//               ),
//             ));
//       }
//     });
//   }

//   shownotification() async {
//     final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//         FlutterLocalNotificationsPlugin();
//     try {
//       await flutterLocalNotificationsPlugin.show(
//           0,
//           "Test",
//           "This is test.",
//           NotificationDetails(
//             android: AndroidNotificationDetails(
//               channel.id, channel.name,
//               channelDescription: channel.description,
//               playSound: true,
//               // sound: RawResourceAndroidNotificationSound("notification")
//               // other properties...
//             ),
//           ));
//     } catch (e) {
//       log("error===$e");
//     }
//   }

//   static Future<String> getFCM() async {
//     FirebaseMessaging messaging = FirebaseMessaging.instance;
//     // use the returned token to send messages to users from your custom server
//     String token = await messaging.getToken() ?? "";
//     log("FCM token:  $token");
//     return token;
//   }
// }

class NotificationServices {
  final _firebaseMassaging = FirebaseMessaging.instance;
  final AndroidNotificationChannel channel = const AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description:
        'This channel is used for important notifications.', // description
    importance: Importance.max,
    playSound: true,
    // sound: RawResourceAndroidNotificationSound("notification"),
  );
  final _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  get withtone1 => const AndroidNotificationDetails(
        "new_channel3",
        "High Importance Notifications",
        channelDescription: "This channel is used for important notifications.",
        icon: "@drawable/ic_launcher",
        playSound: true,
        importance: Importance.max,
        priority: Priority.max,
        sound: RawResourceAndroidNotificationSound("notification"),
      );
  get withtone2 => const AndroidNotificationDetails(
        "new_channel2",
        "High Importance Notifications",
        channelDescription: "This channel is used for important notifications.",
        icon: "@drawable/ic_launcher",
        playSound: true,
        importance: Importance.max,
        priority: Priority.max,
        sound: RawResourceAndroidNotificationSound("tone2"),
      );

  Future<void> init() async {
    // AndroidNotificationDetails android = AndroidNotificationDetails(
    //     "new_channel2", channel.name,
    //     channelDescription: channel.description,
    //     icon: "@drawable/ic_launcher",
    //     playSound: true,
    //     importance: Importance.max,
    //     priority: Priority.max,
    //     sound: const RawResourceAndroidNotificationSound("tone2"));
    // notificationdetails = NotificationDetails(android: android);
    // print(channel.sound!.sound);
    // print(android.sound!.sound);
    await _firebaseMassaging.requestPermission();
    await getFCM();
    await initpushnotification();
    await initlocalnotifications();
  }

  void handlemessage(RemoteMessage? message) async {
    if (message == null) return;
    final notification = message.notification;
    log("notification ====== ${notification?.android}");

    final NotificationDetails notificationdetails = NotificationDetails(
        android: message.data["type"] == "1" ? withtone1 : withtone2);
    if (notification == null) return;
    await _flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      notificationdetails,
      payload: jsonEncode(message.toMap()),
    );
  }

  void shownotification() async {
    final NotificationDetails notificationdetails =
        NotificationDetails(android: withtone1);
    await _flutterLocalNotificationsPlugin.show(
      0,
      "test",
      "this is test",
      notificationdetails,
    );
  }

  cancleNotification(int id) async {
    await _flutterLocalNotificationsPlugin.cancel(id);
  }

  Future initlocalnotifications() async {
    const ios = DarwinInitializationSettings();
    const android = AndroidInitializationSettings("@drawable/ic_launcher");

    const settings = InitializationSettings(android: android, iOS: ios);
    await _flutterLocalNotificationsPlugin.initialize(
      settings,
      onDidReceiveNotificationResponse: (NotificationResponse details) {
        // final RemoteMessage message = RemoteMessage(
        //   notification: details
        // );
        // handlemessage(message);
        log("onDidReceiveNotificationResponse ====== $details");
      },
    );
    final platform =
        _flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();
    await platform!.createNotificationChannel(channel);
  }

  Future initpushnotification() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
            alert: true, sound: true, badge: true);
    await FirebaseMessaging.instance.getInitialMessage().then(handlemessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handlemessage);
    FirebaseMessaging.onBackgroundMessage(handlerbackground);
    FirebaseMessaging.onMessage.listen(handlemessage);
  }

  static Future<String> getFCM() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    // use the returned token to send messages to users from your custom server
    String token = await messaging.getToken() ?? "";
    log("FCM token:  $token");
    return token;
  }
}
