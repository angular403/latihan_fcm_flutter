import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:latihan_fcm_andrew/app/routes/app_pages.dart';

// import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    FirebaseMessaging.instance.getInitialMessage();

    FirebaseMessaging.onMessage.listen(
      (message) {
        if (message.notification != null) {
          print("Title : ${message.notification!.title}");
          print("Body : ${message.notification!.body}");
        }
        if (message.data["route"] == "baru") {
          Get.toNamed(Routes.PRODUCT);
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
