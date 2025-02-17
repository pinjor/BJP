import 'package:bjp/features/auth/ui/screens/member_list.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String name = '/email-verification';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  //final Uri _url = Uri.parse('https://flutter.dev');

  // <-- Missing closing bracket was added here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 80),
                Text('লগইন', style: Theme.of(context).textTheme.titleLarge),
                SizedBox(height: 50.0),
                TextFormField(
                  controller: _emailTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    label: Text('মোবাইল নম্বর*'),
                    hintText: 'এখানে লিখুন',
                  ),
                  keyboardType: TextInputType.number,
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'মোবাইল নম্বর দিন';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 40.0),
                TextFormField(
                  controller: _emailTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    label: Text('পাসওয়ার্ড*'),
                    hintText: 'এখানে লিখুন',
                  ),
                  keyboardType: TextInputType.text,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 183.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, '/otp-verification');
                    },
                    child: Text('পাসওয়ার্ড ভুলে গেছেন ?'),
                  ),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, MemberList.name //'/program_timeline'
                        );
                  },
                  child: Text(
                    'লগইন',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 15.0),
                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: Row(
                    children: [
                      Text('অ্যাকাউন্ট নেই? এখনই '),
                      TextButton(
                        onPressed: () {
                          //_launchUrl();
                        },
                        child: Text('মেম্বার হন।'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Future<void> _launchUrl() async {
  //   if (!await launchUrl(_url)) {
  //     throw Exception('Could not launch $_url');
  //   }
  // }
}
