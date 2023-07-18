import 'package:flutter/material.dart';
import '../widgets/profilePage/login_with_fb_button.dart';
import '../widgets/profilePage/login_with_google_button.dart';
import '../widgets/profilePage/mobile_number_form.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
        child: Column(
          children: [
            Center(
              child: Text(
                'Welcome to LankaDerana.lk',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Text(
              'Login into manage your account',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 15),
            const MobileNumberForm(),
            const SizedBox(height: 15),
            Center(
              child: Text(
                'OR',
                style: Theme.of(context).textTheme.bodyMedium!,
              ),
            ),
            const SizedBox(height: 50),
            LoginWithGoogleButton(
              onPressed: () {},
            ),
            const SizedBox(height: 5),
            LoginWithFacebookButton(
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
