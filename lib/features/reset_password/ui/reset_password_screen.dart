import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:pegasus_gym_mx/widgets/app_scafold.dart';
import 'package:pegasus_gym_mx/widgets/components/app_text.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/colors.dart';
import '../../../widgets/components/app_text_field.dart';
import '../../../widgets/components/gaps.dart';
import '../../sign_up/ui/content/sign_up_head_content.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  // Controlador para email
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Column(
        children: [
          AppGaps.gap4h(),
          SignUpHeadContent(),
          AppGaps.gap4h(),
          resetPasswordContent(),
        ],
      ),
    );
  }

  resetPasswordContent() {
    return Column(
      children: [
        AppText(
          'Recuperar Cuenta',
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
        ),
        AppGaps.gap4h(),
        // Campo Email
        AppTextField(
          controller: _emailController,
          hintText: "Email",
          prefixIcon: Icons.email_outlined,
          fieldType: TextInputType.emailAddress,
        ),
        AppGaps.gap2h(),

        // Botón para crear cuenta
        SizedBox(
          width: 90.w,
          height: 6.h,
          child: ElevatedButton(
            onPressed: () {
              // Aquí va la lógica para resetear la contraseña
              context.push('/passwordChange');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                  "Reestablecer",
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
                AppGaps.gap2w(),
                Icon(
                  Icons.arrow_forward_rounded,
                  color: AppColors.white,
                  size: 18.sp,
                ),
              ],
            ),
          ),
        ),
        AppGaps.gap2h(),
        // Texto para ir a Iniciar Sesión
        GestureDetector(
          onTap: () {
            context.pushReplacement('/signUp');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                "¿No tienes una cuenta? ",
                fontSize: 13.sp,
                fontWeight: FontWeight.normal,
              ),
              AppText(
                "Crear una nueva cuenta",
                fontSize: 13.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.accent,
              ),
            ],
          ),
        ),
        AppGaps.gap4h(),
      ],
    );
  }
}
