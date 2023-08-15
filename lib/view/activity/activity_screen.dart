import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

        ],
      ),
    );
  }

  // Communcation from Flutter to Unity
  // void setRotationSpeed(String speed) {
  //   _unityWidgetController.postMessage(
  //     'Cube',
  //     'SetRotationSpeed',
  //     speed,
  //   );
  // }


  // // Callback that connects the created controller to the unity controller
  // void onUnityCreated(controller) {
  //   unityWidgetController = controller;
  // }
  //
  // // Communication from Unity when new scene is loaded to Flutter
  // void onUnitySceneLoaded(SceneLoaded? sceneInfo) {
  //   print('Received scene loaded from unity: ${sceneInfo?.name}');
  //   print('Received scene loaded from unity buildIndex: ${sceneInfo?.buildIndex}');
  // }
}
