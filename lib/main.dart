import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:replay_healthcare/view/account_information.dart';
import 'package:replay_healthcare/view/auth/login_screen.dart';
import 'package:replay_healthcare/view/auth/phone_verification_screen.dart';
import 'package:replay_healthcare/view/auth/register_screen.dart';
import 'package:replay_healthcare/view/bottomMenu/bottom_menu.dart';
import 'package:replay_healthcare/view/exercise_list_screen.dart';
import 'package:replay_healthcare/view/home/home_screen.dart';
import 'package:replay_healthcare/view/my_workouts.dart';
import 'package:replay_healthcare/view/splash_screen.dart';
import 'package:replay_healthcare/view/steps/step_1.dart';
import 'package:replay_healthcare/view/steps/step_2.dart';
import 'package:replay_healthcare/view/steps/step_3.dart';
import 'package:replay_healthcare/view/steps/step_4.dart';
import 'package:replay_healthcare/view/steps/step_5.dart';
import 'package:replay_healthcare/view/steps/step_6.dart';
import 'package:replay_healthcare/view/steps/step_7.dart';
import 'package:replay_healthcare/view/steps/step_8.dart';
import 'package:replay_healthcare/view/summary.dart';
import 'package:replay_healthcare/view/trainings/unity_screen.dart';
import 'package:replay_healthcare/view/type/type_selection_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          initialRoute: '/',
          routes: {
            '/': (context) => const SplashScreen(),
            'login_screen': (context) => const LoginScreen(),
            'register_screen': (context) => const RegisterScreen(),
            'menu_screen': (context) => const BottomMenu(),
            'home_screen': (context) => const HomeScreen(),
            'type_selection_screen': (context) => const TypeSelectionScreen(),
            'exercise_list_screen': (context) => const ExerciseListScreen(),
            'step_1_screen': (context) => const Step1(),
            'step_2_screen': (context) => const Step2(),
            'step_3_screen': (context) => const Step3(),
            'step_4_screen': (context) => const Step4(),
            'step_5_screen': (context) => const Step5(),
            'step_6_screen': (context) => const Step6(),
            'step_7_screen': (context) => const Step7(),
            'step_8_screen': (context) => const Step8(),
            'phone_verification_screen': (context) => const PhoneVerification(),
            'summary_screen': (context) => const Summary(),
            'account_information': (context) => const AccountInformation(),
            'my_workouts': (context) => const MyWorkouts(),
            'unity_screen': (context) => const UnityScreen(),
          },
        );
      }
    );
  }
}

