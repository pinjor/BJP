import 'package:bjp/api/api_client.dart';
import 'package:bjp/features/auth/ui/screens/member_list.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String name = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Map<String, String> FormValues = {
    "phone_number": "",
    "password": "",
  };
  bool loading = false;

  InputOnChange(MapKey, Textvalue) {
    setState(() {
      FormValues.update(MapKey, (value) => Textvalue);
    });
  }

  FormOnSubmit() async {
    if (FormValues['phone_number']!.length == 0) {
      print('email error');
    } else if (FormValues['password']!.length == 0) {
      print('pass error');
    } else {
      setState(() {
        loading = true;
      });
      bool response = await LoginRequest(FormValues);

      if (response == true) {}
      setState(() {
        loading = false;
      });
    }
  }

  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final String _url =
      "https://rnd.egeneration.co/bjp/public/index.php/registration";

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $uri');
    }
  }

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
                  onChanged: (Textvalue) {
                    InputOnChange("phone_number", Textvalue);
                  },
                ),
                SizedBox(height: 40.0),
                TextFormField(
                  controller: _passwordTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    label: Text('পাসওয়ার্ড*'),
                    hintText: 'এখানে লিখুন',
                  ),
                  keyboardType: TextInputType.text,
                  onChanged: (Textvalue) {
                    InputOnChange("password", Textvalue);
                  },
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
                    FocusScope.of(context).unfocus();
                    FormOnSubmit();
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
                          _launchUrl(_url);
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
}
