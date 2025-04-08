import 'package:flutter/material.dart';
import 'package:pegasus_gym_mx/features/sign_up/ui/content/sign_up_body_content.dart';
import 'package:pegasus_gym_mx/utils/colors.dart';
import 'package:pegasus_gym_mx/widgets/components/gaps.dart';

import 'content/sign_up_head_content.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppGaps.gap4h(),
                SignUpHeadContent(),
                SignUpBodyContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
