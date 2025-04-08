import 'package:flutter/material.dart';
import 'package:pegasus_gym_mx/utils/image_path.dart';
import 'package:pegasus_gym_mx/widgets/components/app_image.dart';
import 'package:sizer/sizer.dart';

class SignUpHeadContent extends StatelessWidget {
  const SignUpHeadContent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppImage(
      imageUrl: ImagePath.appLogo,
      width: 26.w,
      borderRadius: BorderRadius.circular(60),
    );
  }
}
