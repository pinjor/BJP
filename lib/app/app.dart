import 'package:bjp/app/app_theme_data.dart';
import 'package:bjp/features/auth/ui/screens/complete_profile_screen.dart';
import 'package:bjp/features/auth/ui/screens/login_screen.dart';
import 'package:bjp/features/auth/ui/screens/member_list.dart';
import 'package:bjp/features/auth/ui/screens/otp_verification_screen.dart';
import 'package:bjp/features/auth/ui/screens/program_timeline.dart';
import 'package:bjp/features/auth/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class craftybay extends StatelessWidget {
  const craftybay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: AppThemeData.lightThemeData,

      //darkTheme: ThemeData(),
      routes: {
        '/': (context) => splash_screen(),
        LoginScreen.name: (context) => LoginScreen(),
        ProgramTimeline.name: (context) => ProgramTimeline(),
        OtpVeificationScreen.name: (context) => OtpVeificationScreen(),
        CompleteProfileScreen.name: (context) => CompleteProfileScreen(),
        MemberList.name: (context) => MemberList(),
      },
    );
  }
}
