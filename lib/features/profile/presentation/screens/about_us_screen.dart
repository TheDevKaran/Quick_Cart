import 'package:flutter/material.dart';
import 'package:quickcart/features/profile/presentation/widgets/profile_tile.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});
  static const String routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
              },
              child: const Card(
                child: ProfileTile(
                  title: 'Privacy Policy',
                  icon: Icons.lock,
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
              },
              child: const Card(
                child: ProfileTile(
                  title: 'Terms and Conditions',
                  icon: Icons.verified_user_rounded,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
