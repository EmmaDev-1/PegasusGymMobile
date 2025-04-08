import 'package:flutter/material.dart';
import 'package:pegasus_gym_mx/utils/colors.dart';
import 'package:pegasus_gym_mx/widgets/components/app_image.dart';
import 'package:pegasus_gym_mx/widgets/components/app_text.dart';
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
            text: "Iniciar sesion",
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
              const AppText("¿No tienes una cuenta?", color: AppColors.white),
              SizedBox(width: 1.5.w),
              GestureDetector(
                onTap: onSignUpTap,
                child: const AppText("Registrate", color: AppColors.white),
              ),
            ],
          ),
          SizedBox(height: 0.6.h),
          Column(
            children: [
              const AppText("O", color: AppColors.white, fontSize: 7),
              SizedBox(height: 0.6.h),
              const AppText(
                "Login With Social Media",
                color: AppColors.white,
                fontSize: 8,
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppImage(
                    imageUrl: 'assets/images/facebook_logo.png',
                    width: 35,
                    height: 35,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  SizedBox(width: 3.w),
                  AppImage(
                    imageUrl: 'assets/images/google_logo.jpg',
                    width: 35,
                    height: 35,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  SizedBox(width: 3.w),
                  AppImage(
                    imageUrl: 'assets/images/x_logo.png',
                    width: 35,
                    height: 35,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
