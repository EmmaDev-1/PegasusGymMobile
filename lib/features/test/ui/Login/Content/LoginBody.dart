import 'package:flutter/material.dart';
import 'package:pegasus_gym_mx/utils/colors.dart';
import 'package:pegasus_gym_mx/widgets/components/app_image.dart';
import 'package:pegasus_gym_mx/widgets/components/app_text.dart';
import 'package:pegasus_gym_mx/widgets/components/app_text_field.dart';
import 'package:sizer/sizer.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final sizeImage = MediaQuery.of(context).size.width * 0.3;
    final horizontalPadding = screenWidth * 0.06;

    return SizedBox(
      height: screenHeight * 0.5, // Altura total de la sección
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppImage(
                imageUrl: 'assets/images/logo_pegasus_gym.png',
                width: sizeImage,
                height: sizeImage,
                fit: BoxFit.contain,
                borderRadius: BorderRadius.circular(60),
                borderColor: Colors.white,
                borderWidth: 1,
              ),
              SizedBox(height: 2.h),
              AppText(
                "Inicio de sesion", // Puedes corregir a "Welcome Back"
                fontSize: 26,
                color: AppColors.white, // Un verde oscuro similar
              ),
              const SizedBox(height: 8),
              const AppText("Bienvenido", fontSize: 14, color: AppColors.white),
              SizedBox(height: 4.h),
              AppTextField(
                controller: emailController,
                hintText: 'Correo electronico',
                prefixIcon: Icons.person_outline,
                fieldType: TextInputType.name,
                cornerRadius: 10.0,
              ),
              SizedBox(height: 2.h),
              AppTextField(
                controller: passwordController,
                hintText: 'Contraseña',
                obscureText: true,
                prefixIcon: Icons.lock_outline,
                suffixIcon: Icon(
                  Icons.visibility_off,
                  color: AppColors.darkGrey,
                ),
                fieldType: TextInputType.visiblePassword,
                cornerRadius: 10.0,
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  AppText('¿Olvidaste tu contraseña?', color: AppColors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
