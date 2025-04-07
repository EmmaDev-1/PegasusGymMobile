import 'package:flutter/material.dart';
import 'package:pegasus_gym_mx/utils/colors.dart';
import 'package:pegasus_gym_mx/widgets/components/buttons/ButtonLoading.dart';
import 'package:sizer/sizer.dart';

class LoginFooter extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onLoginPressed;
  final VoidCallback onSignUpTap;

  const LoginFooter({
    super.key,
    required this.isLoading,
    required this.onLoginPressed,
    required this.onSignUpTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final horizontalPadding = screenWidth * 0.06;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ButtonLoading(
            text: "Login",
            isEnabled: true,
            enabledTextColor: Colors.black,
            isLoading: isLoading,
            onPressed: onLoginPressed,
            fontSize: 15.sp,
            buttonColor: Colors.amberAccent, // o Colors.green
            borderColor: Color.fromARGB(255, 79, 86, 219),
            cornerRadius: 5,
            borderWidth: 0,
          ),
          SizedBox(height: 2.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "¿No tienes una cuenta?",
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              GestureDetector(
                onTap: onSignUpTap,
                child: Text(
                  "Registrate",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
