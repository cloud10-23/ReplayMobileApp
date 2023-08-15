import 'package:flutter/material.dart';
import 'package:flutter_unity/flutter_unity.dart';

class UnityScreen extends StatefulWidget {
  const UnityScreen({Key? key}) : super(key: key);

  @override
  State<UnityScreen> createState() => _UnityScreenState();
}

class _UnityScreenState extends State<UnityScreen> {

  UnityViewController? unityViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: UnityView(
              onCreated: onUnityViewCreated,
              onReattached: onUnityViewReattached,
              onMessage: onUnityViewMessage,
            ),
          ),
        ],
      ),
    );
  }

  void onUnityViewCreated(UnityViewController? controller) {
    print('onUnityViewCreated');

    unityViewController = controller;

    controller?.send(
      'smile',
      'SetRotationSpeed',
      '2',
    );
  }

  void onUnityViewReattached(UnityViewController controller)  {
    print('onUnityViewReattached');
  }

  void onUnityViewMessage(UnityViewController controller, String? message) {
    print('onUnityViewMessage');

    print(message);
  }

}
