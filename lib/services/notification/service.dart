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
import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> handlerbackground(RemoteMessage message) async {
  log(" ${message.data}");
}

class NotificationServices {
  final _firebaseMassaging = FirebaseMessaging.instance;
  Future<void> initNotifications() async {
    await _firebaseMassaging.requestPermission(
        alert: true, announcement: true, badge: true, sound: true);
    getFCM();
    FirebaseMessaging.onBackgroundMessage(handlerbackground);
  }

  static Future<String> getFCM() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    // use the returned token to send messages to users from your custom server
    String token = await messaging.getToken() ?? "";
    log("FCM token:  $token");
    return token;
  }
}
