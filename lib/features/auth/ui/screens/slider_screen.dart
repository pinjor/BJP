// import 'package:flutter/material.dart';
//
// class OnboardingScreen extends StatefulWidget {
//   static const String name = '/OnboardingScreen';
//
//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }
//
// class _OnboardingScreenState extends State<OnboardingScreen> {
//   bool isAdmin = true;
//
//   void _toggleUserType() {
//     setState(() {
//       isAdmin = !isAdmin;
//     });
//   }
//
//   void _navigateToLogin() {
//     // Navigate to the login screen
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//           builder: (context) =>
//               LoginScreen(userType: isAdmin ? 'Admin' : 'Member')),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(
//                 'assets/logo.png', // Ensure you have the image in assets folder
//                 height: 100,
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'পরিবর্তনে যোগ দিন',
//                 style: Theme.of(context).textTheme.headlineMedium?.copyWith(
//                       fontWeight: FontWeight.bold,
//                     ),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 15),
//               Text(
//                 'আমাদের লক্ষ্য একটি এমন সমাজ গঠন করা যেখানে প্রতিটি মানুষ সমান সুযোগ এবং মর্যাদা পাবে...',
//                 style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                       color: Colors.black87,
//                     ),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 30),
//               UserTypeToggle(
//                 isAdmin: isAdmin,
//                 onToggle: _toggleUserType,
//               ),
//               SizedBox(height: 15),
//               ElevatedButton(
//                 onPressed: _navigateToLogin,
//                 style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                 child: Text(
//                   'প্রবেশ করুন',
//                   style: TextStyle(fontSize: 18, color: Colors.white),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class UserTypeToggle extends StatelessWidget {
//   final bool isAdmin;
//   final VoidCallback onToggle;
//
//   UserTypeToggle({required this.isAdmin, required this.onToggle});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onToggle,
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
//         decoration: BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: Text(
//           isAdmin ? 'Admin' : 'Member',
//           style: TextStyle(fontSize: 18, color: Colors.white),
//         ),
//       ),
//     );
//   }
// }
//
// class LoginScreen extends StatelessWidget {
//   final String userType;
//
//   LoginScreen({required this.userType});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login as $userType'),
//       ),
//       body: Center(
//         child: Text('Welcome, $userType!'),
//       ),
//     );
//   }
// }
