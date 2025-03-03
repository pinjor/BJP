import 'package:bjp/app/app_theme_data.dart';
import 'package:bjp/features/auth/ui/screens/complete_profile_screen.dart';
import 'package:bjp/features/auth/ui/screens/login_screen.dart';
import 'package:bjp/features/auth/ui/screens/member_list.dart';
import 'package:bjp/features/auth/ui/screens/member_search__list.dart';
import 'package:bjp/features/auth/ui/screens/new_password_screen.dart';
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
        '/': (context) => const splash_screen(),
        LoginScreen.name: (context) => LoginScreen(),
        ProgramTimeline.name: (context) => const ProgramTimeline(),
        OtpVeificationScreen.name: (context) => const OtpVeificationScreen(),
        CompleteProfileScreen.name: (context) => const CompleteProfileScreen(),
        MemberList.name: (context) => const MemberList(),
        MemberSearchScreen.name: (context) => MemberSearchScreen(),
        NewPasswordScreen.name: (context) => const NewPasswordScreen(),
        //OnboardingScreen.name: (context) => OnboardingScreen(),
      },
    );
  }
}
