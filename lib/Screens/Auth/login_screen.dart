import 'package:bus_owner/Components/widget/app_logoANDname.dart';
import 'package:bus_owner/main.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            styleSheet.appServices.addheight(20),
            const Center(
              child: AppLogoandname(),
            ),
          ],
        ),
      ),
    );
  }
}
