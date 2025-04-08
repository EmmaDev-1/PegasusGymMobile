import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pegasus_gym_mx/utils/colors.dart';
import 'package:pegasus_gym_mx/widgets/components/gaps.dart';
import 'package:sizer/sizer.dart';
// Importa tus componentes personalizados
import '../../../../widgets/components/app_text.dart';
import '../../../../widgets/components/app_text_field.dart';

class SignUpBodyContent extends StatefulWidget {
  const SignUpBodyContent({super.key});

  @override
  State<SignUpBodyContent> createState() => _SignUpBodyContentState();
}

class _SignUpBodyContentState extends State<SignUpBodyContent> {
  // Controladores para cada campo de texto
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _telefonoController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _verifyPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        // Ajusta el padding o márgenes que necesites
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            AppGaps.gap4h(),
            // Título principal
            AppText(
              "Crear Cuenta",
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
            AppGaps.gap4h(),

            // Campo Username
            AppTextField(
              controller: _usernameController,
              hintText: "Username",
              prefixIcon: Icons.alternate_email_rounded,
              fieldType: TextInputType.text,
            ),
            AppGaps.gap2h(),

            // Campo Nombre
            AppTextField(
              controller: _nombreController,
              hintText: "Nombre",
              prefixIcon: Icons.person_outline_rounded,
              fieldType: TextInputType.name,
            ),
            AppGaps.gap2h(),

            // Campo Email
            AppTextField(
              controller: _emailController,
              hintText: "Email",
              prefixIcon: Icons.email_outlined,
              fieldType: TextInputType.emailAddress,
            ),
            AppGaps.gap2h(),

            // Campo Teléfono
            AppTextField(
              controller: _telefonoController,
              hintText: "Teléfono",
              prefixIcon: Icons.phone_outlined,
              fieldType: TextInputType.phone,
            ),
            AppGaps.gap2h(),

            // Campo Contraseña
            AppTextField(
              controller: _passwordController,
              hintText: "Contraseña",
              prefixIcon: Icons.lock_outline_rounded,
              obscureText: true,
              fieldType: TextInputType.visiblePassword,
            ),
            AppGaps.gap2h(),

            // Campo Verificar Contraseña
            AppTextField(
              controller: _verifyPasswordController,
              hintText: "Verificar contraseña",
              prefixIcon: Icons.lock_outline_rounded,
              obscureText: true,
              fieldType: TextInputType.visiblePassword,
            ),
            AppGaps.gap2h(),

            // Botón para crear cuenta
            SizedBox(
              width: 90.w,
              height: 6.h,
              child: ElevatedButton(
                onPressed: () {
                  // Aquí va la lógica para registrar el usuario
                  context.push('/otpCode');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: AppText(
                  "Crear una cuenta",
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
            ),
            AppGaps.gap2h(),

            // Texto para ir a Iniciar Sesión
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    "¿Ya tienes cuenta? ",
                    fontSize: 13.sp,
                    fontWeight: FontWeight.normal,
                  ),
                  AppText(
                    "Inicia Sesión",
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.accent,
                  ),
                ],
              ),
            ),
            AppGaps.gap4h(),
          ],
        ),
      ),
    );
  }
}
