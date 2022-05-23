import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  void subscribe() async {
    // subscribe to topic on each app start-up
    print("dijalankan");
    await FirebaseMessaging.instance.subscribeToTopic('bodat');
  }
}
