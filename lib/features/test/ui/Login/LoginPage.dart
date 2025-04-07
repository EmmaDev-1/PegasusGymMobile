import 'package:flutter/material.dart';
import 'package:pegasus_gym_mx/features/test/ui/Login/Content/LoginBody.dart';
import 'package:pegasus_gym_mx/features/test/ui/Login/Content/LoginFooter.dart';
import 'package:pegasus_gym_mx/features/test/ui/Login/Content/LoginHead.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          true, // ✅ permite que el layout se ajuste con el teclado
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0D0D0D), Color(0xFF0D0D0D)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      children: [
                        const LoginHead(),
                        const LoginBody(),
                        Expanded(
                          child: LoginFooter(
                            isLoading: false,
                            onLoginPressed: () {
                              // Acción de login
                            },
                            onSignUpTap: () {
                              // Navegar al registro
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
